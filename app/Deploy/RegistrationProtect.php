<?php

namespace App\Deploy;

use Illuminate\Database\Eloquent\Model;
use DB;

class RegistrationProtect extends Model
{
	protected $table = 'tbldangkybaove';
	protected $primaryKey = 'pk_imadkbv';
	public $timestamps = true;


	/**
	 * Document
	 * @link
	 * @return void
	 * @author asus
	 **/
	public function getRegistration($keyword, $status = 4)
	{
		$result = DB::table('tbldangkybaove AS dk')
					->join('tbldetai AS dt', 'dt.pk_imadt', '=', 'dk.fk_imadt')
					->join('tblthamgiadetai AS tgdt', 'tgdt.pk_imadt', '=', 'dt.pk_imadt')
					->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
					->join('tblloaidetai AS ldt', 'ldt.pk_smaldt', '=', 'dt.pk_smaldt')
					->where('dt.pk_imatt', $status)
					->where('tgdt.pk_imavt', 3)
					->select('dt.stendt', 'dt.smasodetai', 'cb.shocvan', 'dk.created_at', 'ldt.stenldt');
		if (!empty($keyword)) {
			$keyword = trim($keyword);
			$result = $result->where(function ($query) use ($keyword) {
						$query->where('dt.stendt', 'LIKE', '%'.$keyword.'%')
					 	  	  ->orWhere('cb.shocvan', 'LIKE', '%'.$keyword.'%');
			});
		}

		$result = $result->orderBy('created_at', 'DESC')
						 ->get();
		return $result;
	} // End action getRegistration


	/**
	 * Lấy danh sách email của các chủ nhiệm để gửi email
	 * @param []	$data: Mảng các mã đề tài
	 * @return array object
	 * @author asus
	 **/
	public function getLeader($data)
	{
		$result = DB::table('tbldetai AS dt')
					->join('tblthamgiadetai AS tgdt', 'dt.pk_imadt', '=', 'tgdt.pk_imadt')
					->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
					->whereIn('dt.pk_imadt', $data)
					->where('tgdt.pk_imavt', 3)
					->select('cb.semail')
					->get();

		$email_data['first'] = $result[0]->semail;

		for ($i=1, $count = count($result); $i<$count; $i++) {
			$email_data['bcc'][] = $result[$i]->semail;
		}

		return $email_data;
	} // End action getLeader
} // End class
