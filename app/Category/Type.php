<?php

namespace App\Category;

use Illuminate\Database\Eloquent\Model;

class Type extends Model
{
    protected $table = 'tblloaihinh';
    protected $primaryKey = 'pk_smalh';
    protected $fillable = ['pk_smalh', 'stenlh'];
    public $timestamps = false;
    public $incrementing  = false;
}
