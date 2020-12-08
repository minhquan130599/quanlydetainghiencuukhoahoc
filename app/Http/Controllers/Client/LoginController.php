<?php

namespace App\Http\Controllers\Client;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Requests\Client\LoginRequest;
use App\Http\Controllers\Controller;
use App\Staff\Staff;
use Illuminate\Support\Facades\Auth;
use App\User;

class LoginController extends Controller
{
	/**
	 * Hiện thị form gửi dữ liệu
	 *
	 * @return void
	 * @author asus
	 **/
	public function create()
	{
        if (Auth::check())
        {
            return redirect()->route('welcome');
        }

		return view('client.login');
	} // End action create


    /**
     * Đăng nhập hệ thống
     * @param (object)  $request: Đối tượng gửi dữ liệu lên
     * @return void
     * @author asus
     **/
    public function login(LoginRequest $request)
    {
        $post_data = array(
            'stendn' => $request->txtUserAccount,
            'password' => $request->txtPassword
        );

        try {
            if (Auth::attempt($post_data, $request->has('remember'))) {
                $request->session()->put('is_login', 1);
                return redirect()->route('welcome');
            }else {
                return redirect()->back()->with([
                     'flash_level'   => 'danger',
                     'flash_message' => 'Tài khoản & mật khẩu không chính xác',
                     'stendn'        => $post_data['stendn'],
                     'password'      => $post_data['password'],
                     'remember' => $request->remember
                 ]);
            }
        } catch (Exception $e) {
            pr($e);
            exit;
        }


    } // End action check


    /**
     * Đăng xuất khỏi hệ thống
     *
     * @return void
     * @author asus
     **/
    public function logout()
    {
    	Auth::logout();
    	return redirect()->route('default');
    } // End action login
} // End class
