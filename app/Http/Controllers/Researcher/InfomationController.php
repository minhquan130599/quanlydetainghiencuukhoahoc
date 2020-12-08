<?php
// Thông tin cá nhân
namespace App\Http\Controllers\Researcher;

use Illuminate\Http\Request;
use App\Category\Rank; //Học hàm
use App\Category\Degree; //Học vị
use App\Category\Unit; //Đơn vị
use App\Category\Specialize; //Chuyên ngành
use App\Category\Nation; // Dân tộc
use App\Category\Religion; // Tôn giáo
use App\Category\StaffGroup; // Nhóm cán bộ
use App\Category\Business;  // Quá trình công tác
use App\Category\SpecializeProcess; // quá trình chuyên môn
use App\Category\Foster; // Quá trình bồi dưỡng
use App\Category\Work;  // Công trình đề tài
use App\Category\Publication;   // Ẩn phẩm khoa học
use App\Staff\Staff; //Cán bộ
use App\Http\Requests\Researcher\InformationRequest;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Auth;

class InfomationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $id = Auth::user()->pk_smacanbo;
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

        return view('researcher.information.index', compact('data', 'staff', 'id'));
    }

    public function update(InformationRequest $request, $id)
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
        $staff->pk_imadv      = $request->txtUnit;
        $staff->sghichu       = $request->txtNote;
        $staff->shocvan       = rsrank($request->txtRank, $request->txtDegree, capitalize_unicode($request->txtUsername));

        if ($request->hasFile('imgAvatar')) {
            $destinationPath = 'upload/avatar';
            $request->file('imgAvatar')->move($destinationPath, $id . ".jpg");
            $staff->sanh = sprintf('\\upload\\avatar\\%s', $id . ".jpg");
        }

        $staff->save();
        return redirect()->route('researcher.information.index')->with([
            'flash_level' => 'success',
            'flash_message' => 'Cập nhật hồ sơ cán bộ thành công'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
