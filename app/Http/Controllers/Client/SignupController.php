<?php

namespace App\Http\Controllers\Client;

use Illuminate\Http\Request;
use App\Category\Rank;
use App\Category\Degree;
use App\Category\Unit;
use App\Category\Specialize;
use App\Category\Nation;
use App\Category\Religion;
use App\Staff\Staff;
use App\Http\Requests;
use App\Http\Requests\Client\SignupRequest;
use App\Http\Controllers\Controller;
use Hash; // Thư viện mã hóa mật khẩu

class SignupController extends Controller
{
    public function create() 
    {
    	$data = [
			'rank_list'       => Rank::select('pk_imahh', 'stenhh')->orderBy('ivitrihienthi', 'ASC')->get(),
			'degree_list'     => Degree::select('pk_imahv', 'stenhv')->orderBy('ivitrihienthi', 'ASC')->get(),
			'unit_list'       => Unit::select('pk_imadv', 'stendv')->get(),
			'specialize_list' => Specialize::all(),
			'nation_list'     => Nation::select('pk_imadantoc', 'stendantoc')->orderBy('ivitrihienthi', 'DESC')->get(),
			'religion_list'   => Religion::select('pk_imatongiao', 'stentongiao')->orderBy('ivitrihienthi', 'ASC')->get()
    	];

    	return view('client.register', compact('data'));
    }


    public function store(SignupRequest $request)
    {
    	$staff = new Staff();
    	$staff->pk_smacanbo = $staff->getNextID();
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
		$staff->pk_imanhomcb  = 4;
		$staff->pk_imadv      = $request->txtUnit;
		$staff->sghichu       = $request->txtNote;
		$staff->stendn        = $request->txtUserAccount;
		$staff->password      = Hash::make($request->txtPassword);

		if ($request->hasFile('imgAvatar')) {
			$destinationPath = 'upload/avatar';
			$request->file('imgAvatar')->move($destinationPath, $staff->getNextID() . ".jpg");
			$staff->sanh = sprintf('\\upload\\avatar\\%s', $staff->getNextID() . ".jpg");
		}

		$staff->save();
		return redirect()->route('client.create')->with([
			'flash_level' => 'success',
			'flash_message' => sprintf('
				<p>Cảm ơn bạn đã đăng ký thông tin hồ sơ Nghiên cứu khoa học</p>
				<p>
					Mời bạn click 
					<a title="Đăng nhập vào hệ thống" href="%s" class="alert-link">vào đây</a> 
					để tiến hành đăng nhập vào hệ thống
				</p>
			', url('/'))
		]);
    }
} // End class
