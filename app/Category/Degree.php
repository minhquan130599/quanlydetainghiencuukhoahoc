<?php

namespace App\Category;

use Illuminate\Database\Eloquent\Model;

class Degree extends Model
{
    protected $table = 'tblhocvi';
    protected $primaryKey = 'pk_imahv';
    public $timestamps = false;
}
