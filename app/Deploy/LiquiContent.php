<?php

namespace App\Deploy;

use Illuminate\Database\Eloquent\Model;
use DB;
class LiquiContent extends Model
{
	protected $table      = 'tbldetai_thanhly';
	protected $primaryKey = 'pk_imadt';
	protected $fillable   = ['pk_imadt', 'dngaytl', 'slydo', 'sghichu', 'fk_imahddt'];
	public $incrementing  = false;
	public $timestamps    = true;

	/**
	 * Lấy ra hội đồng của đề tài thanh lý
	 * @param (int)	$topicID: Mã đề tài
	 * @param (int) $status: Trạng thái đề tài (6 => trạng thái thanh lý)
	 * @param (int) $councilCategory: Loại hội đồng (4 => Hội đồng thanh lý)
	 * @return object
	 * @author asus
	 **/
	public function getLiquiCouncil($topicID, $status = 6, $councilCategory = 4)
	{
		$result = DB::table('tbldetai AS dt')
					->join('tblhoidong_detai AS hddt', 'hddt.fk_imadt', '=', 'dt.pk_imadt')
					->join('tblhoidong AS hd', 'hd.pk_imahd', '=', 'hddt.fk_imahd')
					->where('dt.pk_imadt', $topicID)
					->where('dt.pk_imatt', $status)
					->where('hd.iloaihoidong', $councilCategory)
					->select('hddt.pk_imahddt')
					->first();
		return $result->pk_imahddt;
	} // End action getLiquiCouncil


	/**
	 * Lấy danh sách đề tài đã thanh lý
	 * @param (string) 	$keyword: Từ khóa tìm kiếm
	 * @param (int)	   	$councilCategory: Loại hội đồng(thanh lý)
	 * @return object array
	 * @author asus
	 **/
	public function getLiquiContent($search_data, $councilCategory = 4)
	{
		$result = DB::table('tbldetai AS dt')
					->join('tblthamgiadetai AS tgdt', 'tgdt.pk_imadt', '=', 'dt.pk_imadt')
					->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
					->join('tblhoidong_detai AS hddt', 'hddt.fk_imadt', '=', 'dt.pk_imadt')
					->join('tblhoidong AS hd', 'hd.pk_imahd', '=', 'hddt.fk_imahd')
					->join('tbldetai_thanhly AS tl', 'tl.pk_imadt', '=', 'dt.pk_imadt')
					->leftJoin('tbldetai_chungnhan AS cn', 'cn.pk_imadt', '=', 'tl.pk_imadt')
					->where('hd.iloaihoidong', $councilCategory)
					->where('tgdt.pk_imavt', 3);

		if ( ! empty ($search_data['council']) )
		{
			$result = $result->where('hd.pk_imahd', '=', $search_data['council']);
		}

		if ( ! empty ($search_data['topic']) )
		{
			$result = $result->where('dt.pk_imadt', '=', $search_data['topic']);
		}

		if ( ! empty ($search_data['report_date']) )
		{
			$result = $result->where('tl.dngaytl', '=', $search_data['report_date']);
		}


		$result = $result->select('dt.pk_imadt', 'dt.stendt', 'hd.stenhd',
								'tl.dngaytl', 'tl.slydo', 'tl.sghichu', 'cb.shocvan', 'cn.dngaycapgiaycn')
						 ->orderBy('tl.updated_at', 'DESC')
						 ->paginate(10);
		return $result;
	} // End action getLiquiContent
} // End class
