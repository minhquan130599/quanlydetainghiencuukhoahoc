<?php

namespace App\Http\Controllers\Category;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Auth;

class ErrorController extends Controller
{
    public function redirectErrorPage(Request $request)
    {
        if ( Auth::check() || $request->session()->has('is_login') )
        {
            return view('errors.404_backend');
        }

        return view('errors.404c');
    }


    public function fail_data()
    {
        return view('errors.fail_data');
    }
}
