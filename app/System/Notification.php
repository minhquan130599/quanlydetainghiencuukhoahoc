<?php

namespace App\System;

use Illuminate\Database\Eloquent\Model;
use DB;
class Notification extends Model
{
    protected $table = 'tblthongbao';
    protected $primaryKey = 'pk_imatb';
    public $timestamps = true;

    public function getAllNotification	() 
    {
    	$result = DB::table('tblthongbao AS tb')
    				->leftJoin('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tb.snguoinhan')
    				->select('tb.pk_imatb','tb.stieude','tb.snoidung','tb.strangthai','cb.shodem')
    				->get();
    	return $result;
    } // End action index
}