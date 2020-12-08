<?php

namespace App\Staff;

use Illuminate\Database\Eloquent\Model;

class StaffInfo extends Model
{
    protected $table = 'tblthongtinnnc';
    protected $primaryKey = 'pk_smacanbo';
    public $incrementing = false;
    public $timestamps = false;

    public function staff()
    {
    	return $this->belongTo('App\Staff\Staff');
    }

}
