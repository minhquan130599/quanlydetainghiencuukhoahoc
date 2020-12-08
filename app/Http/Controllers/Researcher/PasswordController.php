<?php

namespace App\Http\Controllers\Researcher;

use Illuminate\Http\Request;

use App\Staff\Staff;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Auth;
use DB;

class PasswordController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('researcher/password/index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function oldpassword(Request $request)
    {
        if (Auth::attempt(['pk_smacanbo' => Auth::user()->pk_smacanbo,'password' => $request->password])) {
           return "success";
        }
        return "fail";
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $user = Staff::findOrFail(Auth::user()->pk_smacanbo);
        $user->password = bcrypt($request->txtMatkhaumoi);
        $user->save();
        return redirect()->route('researcher.password')->with([
            'flash_level' => 'success',
            'flash_message' => 'Cập nhật mật khẩu thành công'
        ]);
    }
}
