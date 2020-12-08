<?php

namespace App\Category;

use Illuminate\Database\Eloquent\Model;
use DB;
class CouncilMember extends Model
{
    protected $table = 'tblthanhvienhd';
    protected $primaryKey = 'pk_imatvhd';
    public $timestamp = false;


    /**
     * Lấy thành viên thuộc hội đồng
     * @param (int)	 $councilID: Mã hội đồng
     * @return object array
     * @author asus
     **/
    public function getMember($councilID) 
    {
    	$result['member'] = DB::table('tblthanhvienhd AS tvhd')
							  ->join('tblhoidong AS hd', 'hd.pk_imahd', '=', 'tvhd.fk_imahd')
							  ->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tvhd.fk_smacb')
							  ->join('tblvaitro_hd AS vt', 'vt.pk_imavthd', '=', 'tvhd.fk_imavaitro')
							  ->where('hd.pk_imahd', $councilID)
							  ->select('cb.pk_smacanbo', 'cb.shodem', 'vt.pk_imavthd', 'vt.smota', 'hd.stenhd', 'tvhd.sghichu')
							  ->get();
    	$result['role'] = DB::select('SELECT * FROM tblvaitro_hd');
    	return $result;
    } // End action getMember
} // End class
