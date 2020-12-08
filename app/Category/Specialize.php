<?php

namespace App\Category;

use Illuminate\Database\Eloquent\Model;

class Specialize extends Model
{
    protected $table = 'tblchuyennganh';
    protected $primaryKey = 'pk_imacn';
    public $timestamps = false;
}
