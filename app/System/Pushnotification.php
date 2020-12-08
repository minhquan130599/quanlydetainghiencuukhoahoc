<?php

namespace App\System;

use Illuminate\Database\Eloquent\Model;
use DB;
use Auth;
class Pushnotification extends Model
{
    public function GetNotification()
    	{
    		$result = DB::table('tblthongbao')
    				->where('strangthai',1)
    				->where('snguoinhan',Auth::user()->pk_smacanbo)
    				->orWhere('snguoinhan',null)
                    ->select('*')
                    ->orderBy('created_at', 'desc')
                    ->get();
        return $result;
    	}
}
