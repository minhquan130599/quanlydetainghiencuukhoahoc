<?php

namespace App\Deploy;

use Illuminate\Database\Eloquent\Model;
use DB;

class Category extends Model
{
    /**
     * Lấy thông tin cơ bản của đề tài
     * @param (int) $id: Mã đề tài 
     * @return object
     * @author asus
     **/
    public function getTopicDetai($id) 
    {
    	$result = DB::table('tbldetai AS dt')
    				->join('tbllinhvuc AS lv', 'lv.pk_imalv','=', 'dt.pk_imalv')
    				->join('tblloaidetai AS ldt', 'ldt.pk_smaldt', '=', 'dt.pk_smaldt')
                    ->join('tbldmtrangthai AS tt', 'tt.pk_imatt', '=', 'dt.pk_imatt')
    				->join('tblthamgiadetai AS tgdt', 'tgdt.pk_imadt', '=', 'dt.pk_imadt')
    				->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
    				->where('dt.pk_imadt', $id)
    				->where('tgdt.pk_imavt', 3)
    				->select(DB::raw("dt.stendt, dt.smasodetai, 
    						DATE_FORMAT(FROM_UNIXTIME(dt.dngaybd), '%d/%m/%Y') AS dngaybd, 
    						DATE_FORMAT(FROM_UNIXTIME(dt.dngaykt), '%d/%m/%Y') AS dngaykt, 
    					dt.scapthiet, dt.smuctieu, dt.snoidungdaicuong, dt.sphuongphap,
    					dt.sketcaudetai, dt.ssanpham, ldt.stenldt, lv.stenlv, cb.shocvan, tt.stentt
    				"))
    				->first();
    	return $result;
    } // End action getTopicDetai


    /**
     * Lấy ra thông tin các thành viên tham gia đề tài
     * @param (int)	$id: Mã đề tài
     * @return array object
     * @author asus
     **/
    public function getMemberJoinTopic($id) 
    {
    	$result = DB::table('tbldetai AS dt')
    				->leftJoin('tblthamgiadetai AS tgdt', 'tgdt.pk_imadt', '=', 'dt.pk_imadt')
    				->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
    				->join('tblvaitro AS vt', 'vt.pk_imavt', '=', 'tgdt.pk_imavt')
    				->where('dt.pk_imadt', $id)
    				->select('vt.pk_imavt', 'vt.svaitro', 'cb.shocvan')
    				->orderBy('vt.pk_imavt', 'DESC')
    				->get();
    	return $result;
    } // End action getMemberJoinTopic


    /**
     * Lấy tất cả những lần thẩm định của đề tài
     * @param (int) $id: Mã đề tài
     * @pram (int) $councilCategory: Loại hội đồng (Mặc định là 1: Hội đồng thẩm định)
     * @return void
     * @author asus
     **/
    public function getExpertise($id, $councilCategory = 1) 
    {
    	$result = DB::table('tbldetai AS dt')
    				->join('tblhoidong_kehoach AS hdkh', 'hdkh.fk_imadt', '=', 'dt.pk_imadt')
    				->join('tblhoidong AS hd', 'hd.pk_imahd', '=', 'hdkh.fk_imahd')
    				->join('tblbaocaotiendo AS bctd', 'bctd.fk_imahdkh', '=', 'hdkh.pk_imahdkh')
    				->where('dt.pk_imadt', $id)
    				->where('hd.iloaihoidong', $councilCategory)
    				->select('hd.pk_imahd', 'hd.stenhd', 'hd.dngaylamviec', 'hd.smahoidong', 'bctd.dngaybc', 
    					'bctd.snoidung', 'bctd.bketqua', 'bctd.bsendmail'
    				)
    				->orderBy('bctd.pk_imabctd', 'DESC')
    				->get();
    	return $result;
    } // End action getExpertise


    /**
     * Lấy thông tin hội đồng nghiệm thu & nội dung nghiệm thu của đề tài
     * @param (int)		$id: Mã số đề tài 
     * @return void
     * @author asus
     **/
    public function getAcceptance($id, $councilCategory = 3) 
    {
    	$result = DB::table('tbldetai AS dt')
    				->join('tblhoidong_detai AS hddt', 'hddt.fk_imadt', '=', 'dt.pk_imadt')
    				->join('tblhoidong AS hd', 'hd.pk_imahd', '=', 'hddt.fk_imahd')
    				->join('tblntdetaicoso AS nt', 'nt.pk_imahddt', '=', 'hddt.pk_imahddt')
    				->where('dt.pk_imadt', $id)
    				->where('hd.iloaihoidong', $councilCategory)
    				->select('hd.pk_imahd', 'hd.stenhd', 'hd.dngaylamviec', 'hd.smahoidong', 'hd.dngaythanhlap', 'nt.*'
    				)
    				->first();
    	return $result;
    } // End action getAcceptance


    /**
     * Document
     * @param (int) $id: Mã đề tài 
     * @return void
     * @author asus
     **/
    public function getLiquidation($id) 
    {
        $result = DB::table('tbldetai_thanhly AS tl')
                    ->join('tblhoidong_detai AS hddt', 'hddt.pk_imahddt', '=', 'tl.fk_imahddt')
                    ->join('tblhoidong AS hd', 'hd.pk_imahd', '=', 'hddt.fk_imahd')
                    ->join('tbldetai AS dt', 'dt.pk_imadt', '=', 'tl.pk_imadt')
                    ->where('dt.pk_imadt', $id)
                    ->select('hd.pk_imahd', 'hd.smahoidong', 'hd.stenhd', 'hd.dngaythanhlap', 'hd.dngaylamviec',
                        'tl.dngaytl', 'tl.slydo', 'tl.sghichu'
                    )
                    ->first();
        return $result;
    } // End action getLiquidation


    /**
     * Lấy danh sách thành viên của hội đồng bất kỳ
     * @param int - $councilID: Mã hội đồng
     * @return void
     * @author asus
     **/
    public function getMemberCouncil($councilID) 
    {
        $result = DB::table('tblhoidong AS hd')
                    ->join('tblthanhvienhd AS tvhd', 'tvhd.fk_imahd', '=', 'hd.pk_imahd')
                    ->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tvhd.fk_smacb')
                    ->join('tblvaitro_hd AS vt', 'vt.pk_imavthd', '=', 'tvhd.fk_imavaitro')
                    ->join('tbldonvi AS dv', 'dv.pk_imadv', '=', 'cb.pk_imadv')
                    ->where('hd.pk_imahd', $councilID)
                    ->select('dv.stendv', 'cb.shocvan', 'vt.smota', 'vt.pk_imavthd', 'tvhd.sghichu')
                    ->get();
        return $result;
    } // End action getMemberCouncil
} // End class
