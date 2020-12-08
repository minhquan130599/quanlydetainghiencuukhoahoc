<?php

namespace App\Plan;

use Illuminate\Database\Eloquent\Model;

class Council extends Model
{
    protected $table = 'tblhoidong';
    protected $primaryKey = 'pk_imahd';
    public $timestamps = false;
}
