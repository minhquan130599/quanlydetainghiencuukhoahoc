<?php

namespace App\Http\Controllers\Staff;

use Illuminate\Http\Request;
use App\Category\Rank;
use App\Category\Degree;
use App\Category\Unit;
use App\Category\Specialize;
use App\Category\Nation;
use App\Category\Religion;
use App\Category\StaffGroup;
use App\Category\Business;  // Quá trình công tác
use App\Category\SpecializeProcess; // quá trình chuyên môn
use App\Category\Foster; // Quá trình bồi dưỡng
use App\Category\Work;  // Công trình đề tài
use App\Category\Publication;   // Ẩn phẩm khoa học
use App\Staff\Staff;
use App\Http\Requests;
use App\Http\Requests\Staff\StaffRequest;
use App\Http\Controllers\Controller;
use Hash, Mail; // Thư viện mã hóa mật khẩu

class StaffController extends Controller
{

    public function index(Request $request)
    {
        $staff = new Staff();

        // Mảng tìm kiếm theo tiêu chí
        $search_data = array(
            'criteria'    => $request->criteria,
            'keyword'     => trim($request->keyword),
            'gender'      => $request->gender,
            'staff_group' => $request->staff_group,
            'unit'        => $request->unit,
            'specialize'  => $request->specialize
        );

        $data  = [
            'paginatorContent' => $staff->getStaffList($search_data),
            'page'             => $request->page,
            'staff_group'      => StaffGroup::all()->toArray(),
            'unit_list'        => Unit::all()->toArray(),
            'specialize_list'  => Specialize::all()->toArray()
        ];

        return view('staff.index', compact('data', 'search_data'));
    }


    public function create()
    {
    	$data = [
			'rank_list'       => Rank::select('pk_imahh', 'stenhh')->orderBy('ivitrihienthi', 'ASC')->get(),
			'degree_list'     => Degree::select('pk_imahv', 'stenhv')->orderBy('ivitrihienthi', 'ASC')->get(),
			'unit_list'       => Unit::select('pk_imadv', 'stendv')->get(),
			'specialize_list' => Specialize::all()->toArray(),
			'nation_list'     => Nation::select('pk_imadantoc', 'stendantoc')->orderBy('ivitrihienthi', 'DESC')->get(),
			'religion_list'   => Religion::select('pk_imatongiao', 'stentongiao')->orderBy('ivitrihienthi', 'ASC')->get(),
            'staffgroup_list' => StaffGroup::all()
    	];

    	return view('staff.update', compact('data'));
    }


    public function store(StaffRequest $request)
    {
        $staff = new Staff();
        $staff->pk_smacanbo   = $staff->getNextID();
        $staff->shodem        = capitalize_unicode($request->txtUsername);
        $staff->sten          = last_word($request->txtUsername);
        $staff->sngaysinh     = $request->dBirthday;
        $staff->sgioitinh     = $request->txtGender;
        $staff->sdienthoai    = $request->txtPhoneNumber;
        $staff->semail        = $request->txtEmail;
        $staff->sdiachi       = $request->txtAdress;
        $staff->squequan      = $request->txtHomeTown;
        $staff->shokhautt     = $request->txtHousehold;
        $staff->pk_imadantoc  = $request->txtNation;
        $staff->pk_imatongiao = $request->txtReligion;
        $staff->pk_imahh      = $request->txtRank;
        $staff->pk_imahv      = $request->txtDegree;
        $staff->pk_imacn      = $request->txtSpecialize;
        $staff->pk_imanhomcb  = $request->txtStafGroup;
        $staff->pk_imadv      = $request->txtUnit;
        $staff->sghichu       = $request->txtNote;
        $staff->shocvan       = $request->txtEducation;
        $staff->stendn        = $request->txtUserAccount;
        $staff->password      = Hash::make($request->txtPassword);

        if ($request->hasFile('imgAvatar')) {
            $destinationPath = 'upload/avatar';
            $request->file('imgAvatar')->move($destinationPath, $staff->getNextID() . ".jpg");
            $staff->sanh = sprintf('\\upload\\avatar\\%s', $staff->getNextID() . ".jpg");
        }
        else {
            $staff->sanh = sprintf('\\upload\\avatar\\%s', $staff->getNextID() . ".png");
        }

        $staff->save();

        $data = array(
            'email'    => $staff->semail,
            'username' => $staff->shodem,
            'account'  => $staff->stendn,
            'password' => $request->txtPassword
        );


        Mail::send('staff.email', $data, function ($message) use ($request) {
            $message->from('quanlykhoahoc2016@gmail.com', 'Hệ thống hỗ trợ quản lý Nghiên cứu khoa học - Viện Khoa học giáo dục Việt Nam');
            $message->to($request->txtEmail, $request->txtUsername);
            $message->subject('Cấp tài khoản đăng nhập hệ thống quản lý Nghiên cứu khoa học(NCKH)');
        });


        return redirect()->route('admin.staff.create')->with([
            'flash_level'   => 'success',
            'flash_message' => sprintf("Cấp tài khoản cán bộ thành công.<br>Hệ thống đã gửi email cho cán bộ <b>%s</b> tại địa chỉ hộp thư: <b>%s</b>", $data['username'], $data['email'])
        ]);
    }


    public function edit($id)
    {
        $data = [
            'rank_list'       => Rank::select('pk_imahh', 'stenhh')->orderBy('ivitrihienthi', 'ASC')->get(),
            'degree_list'     => Degree::select('pk_imahv', 'stenhv')->orderBy('ivitrihienthi', 'ASC')->get(),
            'unit_list'       => Unit::select('pk_imadv', 'stendv')->get(),
            'specialize_list' => Specialize::all(),
            'nation_list'     => Nation::select('pk_imadantoc', 'stendantoc')->orderBy('ivitrihienthi', 'DESC')->get(),
            'religion_list'   => Religion::select('pk_imatongiao', 'stentongiao')->orderBy('ivitrihienthi', 'ASC')->get(),
            'staffgroup_list' => StaffGroup::all()
        ];

        $staff = Staff::findOrFail($id);
        return view('staff.update', compact('data', 'staff', 'id'));
    }


    public function update(StaffRequest $request, $id)
    {
        $staff = Staff::findOrFail($id);
        $staff->shodem        = capitalize_unicode($request->txtUsername);
        $staff->sten          = last_word($request->txtUsername);
        $staff->sngaysinh     = $request->dBirthday;
        $staff->sgioitinh     = $request->txtGender;
        $staff->sdienthoai    = $request->txtPhoneNumber;
        $staff->semail        = $request->txtEmail;
        $staff->sdiachi       = $request->txtAdress;
        $staff->squequan      = $request->txtHomeTown;
        $staff->shokhautt     = $request->txtHousehold;
        $staff->pk_imadantoc  = $request->txtNation;
        $staff->pk_imatongiao = $request->txtReligion;
        $staff->pk_imahh      = $request->txtRank;
        $staff->pk_imahv      = $request->txtDegree;
        $staff->pk_imacn      = $request->txtSpecialize;
        $staff->pk_imanhomcb  = $request->txtStafGroup;
        $staff->pk_imadv      = $request->txtUnit;
        $staff->sghichu       = $request->txtNote;
        $staff->shocvan       = $request->txtEducation;

        if ($request->hasFile('imgAvatar')) {
            $destinationPath = 'upload/avatar';
            $request->file('imgAvatar')->move($destinationPath, $staff->getNextID() . ".jpg");
            $staff->sanh = sprintf('\\upload\\avatar\\%s', $staff->getNextID() . ".jpg");
        }else {
            if (empty($staff->sanh))
            {
                $staff->sanh = sprintf('\\upload\\avatar\\%s', $id . ".png");
            }
        }

        $staff->save();
        return redirect()->route('admin.staff.edit', $id)->with([
            'flash_level' => 'success',
            'flash_message' => 'Cập nhật hồ sơ cán bộ thành công'
        ]);
    }


    /**
     * Chi tiết hồ sơ của 1 cán bộ
     * @link
     * @return void
     * @author asus
     **/
    public function show($id)
    {
        $data = null;
        return view('staff.show', compact('data'));
    } // End action show


    /**
     * Lấy danh sách cán bộ theo điều kiện (Custom Dual List Box)
     * @link
     * @return object json => client
     * @author asus
     **/
    public function resource(Request $request)
    {
        $unitID     = $request->unitID;
        $staff_data = $request->staff_data;
        $staff      = new Staff();
        $data       = $staff->getResource($unitID, $staff_data);
        return response()->json($data);
    } // End action getAjaxResource


    /**
     * Lấy danh sách cán bộ theo điều kiện (Custom Dual List Box)
     * @link
     * @return object json => client
     * @author asus
     **/
    public function resourcestaff(Request $request)
    {
        $unitID     = $request->unitID;
        $staff_data = $request->staff_data;
        $staff      = new Staff();
        $data       = $staff->getResourceStaff($unitID, $staff_data);
        return response()->json($data);
    } // End action getAjaxResource


    /**
     * Yêu cầu lấy thông tin từ client (AngularJS)
     * @link admin/staff/info/$id
     * @return object json => client
     * @author asus
     **/
    public function showInfo($id)
    {
        $staff = new Staff();
        $data = array(
            'info'       => $staff->getInfo($id),
            'business'   => Business::where('pk_smacanbo', $id)->get(),
            'specialize' => SpecializeProcess::where('pk_smacanbo', $id)->get(),
            'foster'     => Foster::where('pk_smacanbo', $id)->get(),
            'work'       => Work::where('pk_smacanbo', $id)->get(),
            'publication'=> Publication::where('pk_smacanbo', $id)->get(),
            'achievement'=> Staff::find($id)->info,
            'topic_join' => $staff->getTopicJoin($id),
            'council'    => $staff->getCouncilMember($id)
        );

        return response()->json($data);
    }


    public function createImage(Request $request)
    {
        // Nhận dữ liệu canvas
        $avt = $request->dataAvt;

        // Tìm kiếm và thay thế đường dẫn ảnh
        $avt = str_replace('data:image/png;base64,', '', $avt);
        $avt = str_replace(' ', '+', $avt);

        $fileData = base64_decode($avt); // Mã hoá file dạng Base64

        // Đường dẫn thư mục ảnh
        if (!empty($request->image_name))
        {
            $fileName = 'upload/avatar/' . $request->image_name . '.png';
        }
        else
        {
            $staff = new Staff();
            $fileName = 'upload/avatar/' . $staff->getNextID() . '.png';
        }


        // Đặt dữ liệu canvas vào file ảnh
        file_put_contents($fileName, $fileData);
        return $fileName;
    }
} // End class
