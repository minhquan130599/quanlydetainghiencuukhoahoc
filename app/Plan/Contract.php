<?php

namespace App\Plan;

use Illuminate\Database\Eloquent\Model;
use DB;
class Contract extends Model
{
	protected $table      = 'tblhopdong';
	protected $primaryKey = 'pk_imahd';
	public $timestamps    = false;


	/**
	 * Lấy danh sách hợp đồng của đề tài
	 * Join bảng hợp đồng với bảng đề tài
	 * @link 
	 * @return void
	 * @author asus
	 **/
	public function getContract($keyword = null) 
	{
		$result = DB::table('tblhopdong AS hd')
					->join('tbldetai AS dt', 'dt.pk_imadt', '=', 'hd.fk_imadt')
					->select('hd.*', 'dt.stendt', 'dt.smasodetai', 'dt.pk_imatt');
		if (!empty($keyword)) {
			$keyword = trim($keyword);
			$result = $result->where(function ($query) use ($keyword) {
				$query->where('hd.ssohieu', 'LIKE', '%'.$keyword.'%')
					  ->orWhere('hd.snguoiky', 'LIKE', '%'.$keyword.'%')
					  ->orWhere('hd.sghichu', 'LIKE', '%'.$keyword.'%')
					  ->orWhere('hd.dngaylap', 'LIKE', '%'.$keyword.'%')
					  ->orWhere('dt.stendt', 'LIKE', '%'.$keyword.'%')
					  ->orWhere('dt.smasodetai', 'LIKE', '%'.$keyword.'%');
			});
		}
		$result = $result->orderBy('hd.pk_imahd', 'DESC')
						 ->paginate(15);
		return $result;
	} // End action getContract


	/**
	 * Lấy ra các đề tài "Đã có nội dung thẩm định và có kết quả là Đạt"
	 * Và Mã của đề tài đó không nằm trong bảng hợp đồng
	 * Cách làm: 
	 *	+ Select lần thẩm định gần đây nhất của từng hội đồng (MAX (pk_imabctd))
	 *	+ Nối với bảng tbl_hoidongkehoach => được lần thẩm định gần nhất của từng đề tài
	 *  + WHERE NOT IN (không nằm trong bảng hội đồng)
	 * Truy vấn nối sang bảng báo cáo tiến độ. Kiểm tra có hội đồng của đề tài đó
	 * @link 
	 * @return void
	 * @author asus
	 **/
	public function getTopic() 
	{
		$table_1 =  DB::table('tbldetai AS dt')
                    ->join('tblhoidong_kehoach AS hdkh', 'hdkh.fk_imadt', '=', 'dt.pk_imadt')
                    ->join('tblbaocaotiendo AS bctd', 'bctd.fk_imahdkh', '=', 'hdkh.pk_imahdkh')
                    ->join('tblhoidong AS hd', 'hd.pk_imahd', '=', 'hdkh.fk_imahd')
                    ->select('dt.pk_imadt','dt.stendt', 'hd.iloaihoidong', 'hd.stenhd', 'bctd.pk_imabctd', 'bctd.dngaybc', 'bctd.snoidung', 'bctd.bketqua');

        $table_2 = DB::table('tblbaocaotiendo')
                    ->select(DB::raw('MAX(pk_imabctd) AS max'))
                    ->groupBy('fk_imahdkh');
        

    	$result = DB::table(DB::raw("({$table_1->toSql()}) AS b1"))
                    ->join(DB::raw("({$table_2->toSql()}) AS b2"), 'b1.pk_imabctd', '=', 'b2.max')
                    ->select('b1.pk_imadt', 'b1.stendt')
                    ->where('b1.iloaihoidong', 1)
                    ->where('b1.bketqua', 1)
                    ->whereNotIn('b1.pk_imadt', function($query) {
						$query->select('fk_imadt')
							  ->from('tblhopdong');
					});
        
       	$result = $result->get();
		return $result;
	} // End action getTopic


	/**
	 * Document
	 * @link 
	 * @return void
	 * @author asus
	 **/
	public function getResource($id) 
	{
		$result = DB::table('tblhopdong AS hd')
					->join('tbldetai AS dt', 'dt.pk_imadt', '=', 'hd.fk_imadt')
					->where('hd.pk_imahd', $id)
					->select('dt.smasodetai', 'dt.stendt', 'hd.*')
					->first();
		return $result;
	} // End action getReources


	/**
	 * Lấy ra thông tin hợp đồng của 1 đề tài
	 * Truy vấn bảng hợp đồng where theo mã đề tài
	 * @param (int) $topicID: Mã đề tài
	 * @return object
	 * @author asus
	 **/
	public function getContractForTopic($topicID)
	{
		$result = DB::table('tblhopdong AS hd')
					->join('tbldetai AS dt', 'dt.pk_imadt', '=', 'hd.fk_imadt')
					->where('fk_imadt', $topicID)
					->select('hd.dngaylap', 'hd.ssohieu', 'hd.snguoiky', 'hd.sghichu')
					->first();
		return $result;
	}
} // End class
