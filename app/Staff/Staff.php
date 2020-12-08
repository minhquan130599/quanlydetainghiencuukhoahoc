<?php

namespace App\Staff;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Model;
use DB;
class Staff extends Authenticatable
{
    protected $table = 'tblcanbo';
    protected $primaryKey = 'pk_smacanbo';
    protected $fillable = ['stendn', 'smatkhau'];
    public $timestamps = false;
    public $incrementing  = false;

     /**
     * Lấy ra mã cán bộ mới nhất. Sau đó cộng 1 => Cán bộ tiếp theo cần chèn
     * @link
     * @param
     * @return void
     * @author asus <huu.phuong195@gmail.com>
     **/
    public function getNextID()
    {
        $result = DB::table('tblcanbo')
                    ->select(DB::raw('MAX(SUBSTRING(pk_smacanbo, 4)*1.0) AS max'))
                    ->first();
        $id = !empty($result->max) ? sprintf('%s_%02d', 'CB', ($result->max)+1) : 'CB_01';
        return $id;
    } // End action getMaxId


    /**
     * Lấy danh sách cán bộ
     * Join bảng cán bộ với bảng đơn vị, học hàm, học vị
     * @param (array)   $seach_data: Mảng dữ liệu tìm kiếm
     * @return void
     * @author asus <huu.phuong195@gmail.com>
     **/
    public function getStaffList($search_data = array())
    {
        //DB::enableQueryLog();
        $result = DB::table('tblcanbo AS cb')
                    ->join('tbldonvi AS dv', 'dv.pk_imadv', '=', 'cb.pk_imadv')
                    ->join('tblchuyennganh AS cn', 'cn.pk_imacn', '=', 'cb.pk_imacn')
                    ->join('tblnhomcb AS ncb', 'ncb.pk_imanhomcb', '=', 'cb.pk_imanhomcb')
                    ->select('cb.pk_smacanbo', 'cb.shodem', 'cb.sngaysinh', 'cb.sgioitinh', 'cb.sanh',
                        'cb.shocvan', 'cb.sdienthoai', 'cb.semail', 'dv.stendv', 'ncb.stennhomcb',
                        'cn.stencn');

        if (!empty($search_data['criteria']) && !empty($search_data['keyword']))
        {
            // Tìm theo tiêu chí
            switch ($search_data['criteria']) {
                case 'hoten':
                    $result = $result->where('cb.shodem', 'LIKE', '%'.$search_data['keyword'].'%');
                    break;

                case 'ngaysinh':
                    $result = $result->where('cb.sngaysinh', '=', $search_data['keyword']);
                    break;

                case 'dienthoai':
                    $result = $result->where('cb.sdienthoai', 'LIKE', '%'.$search_data['keyword'].'%');
                    break;

                case 'email':
                    $result = $result->where('cb.semail', 'LIKE', '%'.$search_data['keyword'].'%');
                    break;

                case 'diachi':
                    $result = $result->where(function ($query) use ($search_data) {
                        $query->where('cb.sdiachi', 'LIKE', '%'.$search_data['keyword'].'%')
                              ->orWhere('cb.squequan', 'LIKE', '%'.$search_data['keyword'].'%');
                    });
                    break;

                default:
                    # code...
                    break;
            }
        }
        elseif (!empty($search_data['keyword']))
        {
            // Tìm trong các tiêu chí trên kia
            $result = $result->where(function ($query) use ($search_data) {
                       $query->where('cb.shodem', 'LIKE', '%'.$search_data['keyword'].'%')
                             ->orWhere('cb.sngaysinh', '=', $search_data['keyword'])
                             ->orWhere('cb.sdienthoai', 'LIKE', '%'.$search_data['keyword'].'%')
                             ->orWhere('cb.semail', 'LIKE', $search_data['keyword'].'%')
                             ->orWhere('cb.sdiachi', 'LIKE', '%'.$search_data['keyword'].'%')
                             ->orWhere('cb.squequan', 'LIKE', '%'.$search_data['keyword'].'%');
            });
        }

        // Nếu chọn giới tính
        if (!empty ($search_data['gender']))
        {
            $result = $result->where('cb.sgioitinh', '=', $search_data['gender']);
        }

        // Nếu chọn nhóm cán bộ
        if (!empty ($search_data['staff_group']))
        {
            $result = $result->where('cb.pk_imanhomcb', '=', $search_data['staff_group']);
        }

        // Nếu chọn đơn vị
        if (!empty ($search_data['unit']))
        {
            $result = $result->where('cb.pk_imadv', '=', $search_data['unit']);
        }

        // Nếu chọn chuyên môn
        if (!empty ($search_data['specialize']))
        {
            $result = $result->where('cb.pk_imacn', '=', $search_data['specialize']);
        }

        $result = $result->orderBy(DB::raw("SUBSTRING(pk_smacanbo, 4)*1.0"), 'DESC')
                         ->orderBy('ncb.pk_imanhomcb', 'ASC')
                         ->paginate(15);
        //dd(DB::getQueryLog());
        return $result;
    } // End action getStaffList


    /**
     * Document
     * @link
     * @return void
     * @author asus
     **/
    public function getResource($unitID, $staff_data)
    {
        $result = DB::table('tblcanbo')
                    ->select('pk_smacanbo', 'shodem');

        if ($unitID != 'all')
        {
            $result = $result->where('pk_imadv', $unitID);
        }

        if (!empty ($staff_data))
        {
            $result = $result->whereNotIn('pk_smacanbo', $staff_data);
        }

        $data['staff_list'] = $result->get();
        $data['role'] = DB::table('tblvaitro_hd')->get();

        return $data;
    } // End action getResource


    /**
     * Document
     * @link
     * @return void
     * @author Hoang Do
     **/
    public function getResourceStaff($unitID, $staff_data)
    {
        $result = DB::table('tblcanbo')
                    ->select('pk_smacanbo', 'shodem');

        if ($unitID != 'all')
        {
            $result = $result->where('pk_imadv', $unitID);
        }

        if (!empty ($staff_data))
        {
            $result = $result->whereNotIn('pk_smacanbo', $staff_data);
        }

        $data['staff_list'] = $result->get();
        $data['role'] = DB::table('tblvaitro')->get();

        return $data;
    } // End action getResource


    /**
     * Lấy thông tin chi tiết của 1 cán bộ
     * @param (int) $id: Mã cán bộ
     * @return void
     * @author asus
     **/
    public function getInfo($id)
    {
        $result = DB::table('tblcanbo AS cb')
                    ->join('tblhocham AS hh', 'hh.pk_imahh', '=', 'cb.pk_imahh')
                    ->join('tblhocvi AS hv', 'hv.pk_imahv', '=', 'cb.pk_imahv')
                    ->join('tbldonvi AS dv', 'dv.pk_imadv', '=', 'cb.pk_imadv')
                    ->join('tblnhomcb AS ncb', 'ncb.pk_imanhomcb', '=', 'cb.pk_imanhomcb')
                    ->join('tblchuyennganh AS cn', 'cn.pk_imacn', '=', 'cb.pk_imacn')
                    ->join('tbldantoc AS dt', 'dt.pk_imadantoc', '=', 'cb.pk_imadantoc')
                    ->join('tbltongiao AS tg', 'tg.pk_imatongiao', '=', 'cb.pk_imatongiao')
                    ->where('cb.pk_smacanbo', $id)
                    ->select('cb.shodem', 'cb.sngaysinh', 'cb.sgioitinh', 'cb.sdienthoai', 'cb.semail',
                        'cb.sdiachi', 'cb.squequan', 'cb.shokhautt', 'cb.sanh', 'cb.stendn', 'cb.sghichu',
                        'hh.stenhh', 'hv.stenhv', 'cn.stencn', 'ncb.stennhomcb', 'dv.stendv',
                        'dt.stendantoc', 'tg.stentongiao'
                    )->first();

        return $result;
    }

    /**
     * Relationship với bảng thông tin cán bộ
     * 1 cán bộ có 1 bộ thông tin
     */
    public function info()
    {
        return $this->hasOne('App\Staff\StaffInfo', 'pk_smacanbo', 'pk_smacanbo');
    }


    /**
     * Lấy ra các đề tài khoa học mà cán bộ $id đã tham gia
     * Join đến bảng tham gia đề tài, vai trò, đề tài để lấy dữ liệu cần thiết
     * @param (int) $id: Mã cán bộ
     * @return void
     * @author asus
     **/
    public function getTopicJoin($id)
    {
        $result = DB::table('tblcanbo AS cb')
                    ->join('tblthamgiadetai AS tgdt', 'tgdt.pk_smacanbo', '=', 'cb.pk_smacanbo')
                    ->join('tbldetai AS dt', 'dt.pk_imadt', '=', 'tgdt.pk_imadt')
                    ->join('tblvaitro AS vt', 'vt.pk_imavt', '=', 'tgdt.pk_imavt')
                    ->where('cb.pk_smacanbo', $id)
                    ->select(DB::raw('dt.stendt,
                        DATE_FORMAT(FROM_UNIXTIME(dngaybd), "%d/%m/%Y") AS dngaybd,
                        DATE_FORMAT(FROM_UNIXTIME(dngaykt), "%d/%m/%Y") AS dngaykt,
                        vt.svaitro')
                    )->orderBy('vt.pk_imavt', 'DESC')
                     ->get();
        return $result;
    } // End action getTopicJoin


    /**
     * Lấy ra danh sách hội đồng mà cán bộ đó đã tham gia
     * @param (int) $id: Mã cán bộ
     * @return void
     * @author asus
     **/
    public function getCouncilMember($id)
    {
        $result = DB::table('tblhoidong AS hd')
                    ->join('tblthanhvienhd AS tvhd', 'tvhd.fk_imahd', '=', 'hd.pk_imahd')
                    ->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tvhd.fk_smacb')
                    ->join('tblvaitro_hd AS vt', 'vt.pk_imavthd', '=', 'tvhd.fk_imavaitro')
                    ->join('tblloaihoidong AS lhd', 'hd.iloaihoidong', '=', 'lhd.pk_imaloaihd')
                    ->select('hd.stenhd', 'hd.dngaylamviec', 'lhd.stenloaihd', 'vt.smota')
                    ->where('cb.pk_smacanbo', $id)
                    ->orderBy('lhd.pk_imaloaihd', 'DESC')
                    ->get();
        return $result;
    } // End action getCouncilMember

    /**
     * Document
     * @link 
     * @param
     * @return void
     * @author Hoang Do <dvhoangfh1@gmail.com>
     **/
    public function getListStaff() 
    {
        $result = DB::table('tblcanbo')
                    ->select('pk_smacanbo', 'shodem')
                    ->get();
        return $result;
    } // End action getListStaff
} // End class
