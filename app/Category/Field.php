<?php

namespace App\Category;

use Illuminate\Database\Eloquent\Model;

class Field extends Model
{
    protected $table = 'tbllinhvuc';
    protected $primaryKey = 'pk_imalv';
    protected $fillable = ['pk_imalv', 'stenlv'];
    public $timestamps = false;
}
