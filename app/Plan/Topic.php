<?php

namespace App\Plan;

use Illuminate\Database\Eloquent\Model;
use DB;

class Topic extends Model
{
    protected $table = 'tbldetai';
    protected $primaryKey = 'pk_imadt';
    public $timestamps = false;

    /**
	 * Lấy danh sách đề tài đã đăng ký
	 * @link
	 * @param
	 * @return void
	 * @author asus <huu.phuong195@gmail.com>
	 **/
	public function getTopicRegister($search_data = array())
	{
		DB::enableQueryLog();
		$result = DB::table('tbldetai AS dt')
					->join('tblthamgiadetai AS tgdt', 'dt.pk_imadt', '=', 'tgdt.pk_imadt')
					->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
					->join('tblloaidetai AS ldt', 'dt.pk_smaldt', '=', 'ldt.pk_smaldt')
					->join('tbllinhvuc AS lv', 'lv.pk_imalv', '=', 'dt.pk_imalv')
					->join('tblnamdetai AS ndt', 'dt.fk_smaloainam', '=', 'ndt.pk_smaloainam')
					->select('dt.pk_imadt', 'dt.stendt', 'dt.smuctieu', 'dt.ssanpham', 'dt.snoidungdaicuong',
						'dt.sketcaudetai', 'dt.bsendmail', 'dt.fcptong',
						'cb.shodem', 'cb.semail', 'cb.shocvan', 'ndt.sonam', 'lv.stenlv', 'ldt.stenldt'
					)
					->where('dt.pk_imatt', '=', 1)
					->where('tgdt.pk_imavt', 3);
		if (!empty ($search_data['keyword']))
		{
			$keyword = trim($search_data['keyword']);
			$result = $result->where('dt.stendt', 'LIKE', '%'.$keyword.'%');
		}

		if (!empty ($search_data['specialize']))
		{
			$result = $result->where('dt.pk_imalv', '=', $search_data['specialize']);
		}

		if (!empty ($search_data['staff']))
		{
			$result = $result->where('tgdt.pk_smacanbo', '=', $search_data['staff']);
		}

		if (!empty ($search_data['topic_year']))
		{
			$result = $result->where('dt.fk_smaloainam', '=', $search_data['topic_year']);
		}

		if (!empty ($search_data['topic_category']))
		{
			$result = $result->where('dt.pk_smaldt', '=', $search_data['topic_category']);
		}

		if (!empty ($search_data['expense']))
		{
			switch ($search_data['expense']) {
				case '5000000':
					$result = $result->whereRaw(DB::raw('dt.fcptong*1.0 >= 5000000'));
					break;

				case '10000000':
					$result = $result->whereRaw(DB::raw('dt.fcptong*1.0 >= 10000000'));
					break;

				case '15000000':
					$result = $result->whereRaw(DB::raw('dt.fcptong*1.0 >= 15000000'));
					break;

				case '20000000':
					$result = $result->whereRaw(DB::raw('dt.fcptong*1.0 >= 20000000'));
					break;

				default:
					# code...
					break;
			}
		}

		$result = $result->orderBy('dt.bsendmail', 'DESC')
						 ->orderBy('dt.fcptong', 'DESC')
						 ->orderBy('dt.pk_imadt', 'DESC')
						 ->paginate(15);
		//dd(DB::getQueryLog());
		return $result;
	} // End action getTopicRegister


	/**
	 * Thêm dữ liệu trả về khóa chính
	 * @param [] $post_data: Dữ liệu người dùng post lên
	 * @return ($id) : Mã đề tài
	 * @author asus
	 **/
	public function insertGetId($post_data)
	{
		$id = DB::table('tbldetai')->insertGetId($post_data);
		return $id;
	} // End action insertGetId


	/**
	 * Lấy ra các đề tài được triển khai (Điều kiện: Đã lập hợp đồng)
	 *
	 * @link
	 * @return void
	 * @author asus
	 **/
	public function getDeployTopic($keyword = null,$macb = null)
	{
		$result = DB::table('tbldetai AS dt')
					->join('tblthamgiadetai AS tgdt', 'tgdt.pk_imadt', '=', 'dt.pk_imadt')
					->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
					->join('tbldonvi AS dv', 'dv.pk_imadv', '=', 'cb.pk_imadv')
					->select('dt.pk_imadt', 'dt.smasodetai', 'dt.stendt', 'dt.dngaybd', 'dt.dngaykt',
						'dv.stendv', 'cb.shocvan')
					->where('tgdt.pk_imavt', 3)
					->whereIn('dt.pk_imadt', function ($query) {
						$query->select('fk_imadt')->from('tblhopdong');
					});
		if ($keyword)
		{
			$keyword = trim($keyword);
			$result = $result->where(function ($query) use ($keyword) {
				$query->where('dt.stendt', 'LIKE', '%'.$keyword.'%')
					   ->orWhere('dt.smasodetai', 'LIKE', '%'.$keyword.'%')
					   ->orWhere('cb.shodem', 'LIKE', '%'.$keyword.'%')
					   ->orWhere('dv.stendv', 'LIKE', '%'.$keyword.'%');
			});
		}
		if ($macb)
		{
			$result = $result->where('cb.pk_smacanbo',$macb);
		}
		$result = $result->orderBy('dt.pk_imatt', 'ASC')->paginate(15);
		return $result;
	} // End action getDeployTopic


	/**
	 * Lấy thông tin chi tiết đề tài(Triển khai danh mục)
	 * Join bảng đề tài với các bảng liên quan
	 * @param (int) $id: Mã đề tài
	 * @return void
	 * @author asus
	 **/
	public function getDetailTopic($id)
	{
		$result = DB::table('tbldetai AS dt')
					->join('tblthamgiadetai AS tgdt', 'tgdt.pk_imadt', '=', 'dt.pk_imadt')
					->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
					->join('tblloaidetai AS ldt', 'ldt.pk_smaldt', '=', 'dt.pk_smaldt')
					->where('dt.pk_imadt', $id)
					->where('tgdt.pk_imavt', 3)
					->select('dt.pk_imadt', 'dt.smasodetai', 'dt.dngaybd', 'dt.dngaykt',
						'dt.stendt', 'dt.smuctieu', 'dt.scapthiet', 'dt.ssanpham', 'dt.sphuongphap',
						'dt.sketcaudetai', 'dt.sphamvi', 'dt.snoidungdaicuong', 'ldt.stenldt'
					)->first();
		return $result;
	} // End action

	/**
	 * Lấy danh sách đề tài bên researcher
	 * @link
	 * @param
	 * @return void
	 * @author Hoang Do <dvhoangfh1@gmail.com>
	 **/
	public function GetAllTopic($keyword = null,$macb)
	{
		$result = DB::table('tbldetai as dt')
				->join('tblthamgiadetai as tgdt','dt.pk_imadt', '=', 'tgdt.pk_imadt')
				->join('tbldmtrangthai as tt','tt.pk_imatt', '=', 'dt.pk_imatt')
				->join('tblcanbo as cb','cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
				->select('dt.pk_imadt','dt.stendt','dt.pk_imatt','dt.smuctieu','dt.ssanpham','dt.snoidungdaicuong','cb.shodem','tt.stentt')
				->where('cb.pk_smacanbo', '=' , $macb)
				->where('tgdt.pk_imavt', 3);
				if (!empty ($keyword)) {
					$result = $result->where(function($query) use ($keyword) {
						$query->where('dt.stendt', 'LIKE', '%'.$keyword.'%')
							  ->orWhere('dt.smuctieu', 'LIKE', '%'.$keyword.'%')
							  ->orWhere('dt.ssanpham', 'LIKE', '%'.$keyword.'%')
							  ->orWhere('dt.snoidungdaicuong', 'LIKE', '%'.$keyword.'%')
						 	  ->orWhere('cb.shodem', 'LIKE', '%'.$keyword.'%');
					});
				}
				$result = $result->orderBy('dt.pk_imadt', 'desc')->paginate(50);
				// pr($result);
				return $result;
	} // End action index

	/**
	 * Lấy danh sách đề tài chậm muộn
	 * Cách làm: Lấy các đề tài nằm trong bảng hợp đồng
	 * và chưa đăng ký bảo vệ và đã quá hạn
	 * @return void
	 * @author asus
	 **/
	public function getDelayTopic($id = null)
	{
		$result = DB::table('tbldetai AS dt')
					->join('tblthamgiadetai AS tgdt', 'tgdt.pk_imadt', '=', 'dt.pk_imadt')
					->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
					->select('dt.pk_imadt', 'dt.stendt', 'cb.shocvan', 'dt.dngaykt', 'cb.semail')
					->where('tgdt.pk_imavt', '=', 3)
					->where('dt.pk_imatt', '<=', 4)
					->where('dt.dngaykt', '<', time())
					->whereIn('dt.pk_imadt', function ($query) {
						$query->select('fk_imadt')->from('tblhopdong');
					});
		if(!empty($id)){
			$result = $result->where('cb.pk_smacanbo',$id);
		}
		return $result->get();
	} // End action getDelayTopic

	public function GetTopicForResearcher($macb)
	{
		$result = DB::table('tbldetai as dt')
				->join('tblthamgiadetai as tgdt','dt.pk_imadt', '=', 'tgdt.pk_imadt')
				->join('tblcanbo as cb','cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
				->select('dt.pk_imadt','dt.stendt')
				->where('cb.pk_smacanbo', '=' , $macb)
				->where('tgdt.pk_imavt', 3);
		$result = $result->get();
		return $result;
	}
} // End class
