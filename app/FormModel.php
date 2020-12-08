<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class FormModel extends Model
{
    private $leader = 3;    // Mã vai trò chủ nhiệm

    /**
     * Lấy thông tin của chủ nhiệm đề tài
     * @param  int $topicID Mã đề tài
     * @return object          Đối tượng chứa thông tin của chủ nhiệm
     */
    public function getLeader($topicID)
    {
        $result = DB::table('tbldetai AS dt')
                    ->join('tblthamgiadetai AS tgdt', 'dt.pk_imadt', '=', 'tgdt.pk_imadt')
                    ->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
                    ->join('tblhocvi AS hv', 'hv.pk_imahv', '=', 'cb.pk_imahv')
                    ->where('dt.pk_imadt', '=', $topicID)
                    ->where('tgdt.pk_imavt', '=', $this->leader)
                    ->select(
                            'cb.*',
                            'hv.stenhv'
                        )
                    ->first();
        return $result;
    }


    public function getMembers($topicID)
    {
        $result = DB::table('tbldetai AS dt')
                    ->join('tblthamgiadetai AS tgdt', 'dt.pk_imadt', '=', 'tgdt.pk_imadt')
                    ->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
                    ->join('tblhocvi AS hv', 'hv.pk_imahv', '=', 'cb.pk_imahv')
                    ->join('tblvaitro AS vt', 'vt.pk_imavt', '=', 'tgdt.pk_imavt')
                    ->where('dt.pk_imadt', '=', $topicID)
                    ->where('tgdt.pk_imavt', '!=', $this->leader)
                    ->select(
                            'cb.pk_smacanbo',
                            'cb.shodem',
                            'cb.shocvan',
                            'cb.sdienthoai',
                            'cb.semail',
                            'hv.stenhv',
                            'vt.svaitro'
                        )
                    ->get();
        return $result;
    }


    /**
     * Lấy ra đơn vị của chủ nhiệm đề tài
     * @param  int $topicID     Mã đề tài
     * @return object           Thông tin đơn vị công tác của chủ nhiệm đề tài
     */
    public function getUnit($topicID)
    {
        $leader = $this->getLeader($topicID);
        $unitID = $leader->pk_imadv;
        $result = DB::table('tbldonvi')
                    ->where('pk_imadv', '=', $unitID)
                    ->first();
        return $result;
    }


    /**
     * Lấy ra thông tin chi tiết của từng thành viên trong một hội đồng
     * @param  int $topicID             Mã đề tài
     * @param  int $councilCategory     Mã loại hội đồng
     * @return object                   Mảng đối tượng các thành viên của 1 hội đồng "test" đề tài đó
     */
    public function getCouncilMember($topicID, $councilCategory)
    {
        $result = DB::table('tblthanhvienhd AS tvhd')
                      ->join('tblhoidong AS hd', 'hd.pk_imahd', '=', 'tvhd.fk_imahd')
                      ->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tvhd.fk_smacb')
                      ->join('tbldonvi AS dv', 'dv.pk_imadv', '=', 'cb.pk_imadv')
                      ->join('tblvaitro_hd AS vt', 'vt.pk_imavthd', '=', 'tvhd.fk_imavaitro');
            if (in_array( $councilCategory, [1, 2] ))
            {
                $result = $result->join('tblhoidong_kehoach AS hdkh', 'hdkh.fk_imahd', '=', 'hd.pk_imahd')
                                 ->where('hdkh.fk_imadt', $topicID);

            }
            elseif (in_array( $councilCategory, [3, 4] ))
            {
                $result = $result->join('tblhoidong_detai AS hddt', 'hddt.fk_imahd', '=', 'hd.pk_imahd')
                                ->where('hddt.fk_imadt', $topicID);
            }
                $result = $result->where('hd.iloaihoidong', $councilCategory)
                                ->select(
                                    'cb.pk_smacanbo',
                                    'cb.shodem',
                                    'vt.pk_imavthd',
                                    'vt.smota',
                                    'hd.stenhd',
                                    'hd.squyetdinh',
                                    'tvhd.sghichu',
                                    'hd.dngaylamviec',
                                    'hd.dngaythanhlap',
                                    'dv.stendv'
                                )
                                ->get();
        return $result;
    }


    public function getContract($topicID)
    {
        $result = DB::table('tblhopdong')
                    ->where('fk_imadt', $topicID)
                    ->first();
        return $result;
    }


    public function getNghiemthu($topicID)
    {
        $result = DB::table('tbldetai AS dt')
                    ->join('tblhoidong_detai AS hddt', 'hddt.fk_imadt', '=', 'dt.pk_imadt')
                    ->join('tblhoidong AS hd', 'hd.pk_imahd', '=', 'hddt.fk_imahd')
                    ->join('tblntdetaicoso AS nt', 'nt.pk_imahddt', '=', 'hddt.pk_imahddt')
                    ->join('tbldmxeploai AS xl', 'xl.pk_imadmxeploai', '=', 'nt.fk_imadmxeploai')
                    ->select('xl.stendmxeploai')
                    ->first();
        return $result;
    }


    public function getStatus($topicID)
    {
        $result = DB::table('tbldetai AS dt')
                    ->join('tbldmtrangthai AS tt', 'tt.pk_imatt', '=', 'dt.pk_imatt')
                    ->select('tt.stentt')
                    ->where('dt.pk_imadt', $topicID)
                    ->first();
        return $result;
    }
}
