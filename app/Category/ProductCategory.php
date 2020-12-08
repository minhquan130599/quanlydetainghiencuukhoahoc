<?php

namespace App\Category;

use Illuminate\Database\Eloquent\Model;

class ProductCategory extends Model
{
    protected $table = 'tblloaisanpham';
    protected $primaryKey = 'pk_imalsp';
    protected $fillable = ['pk_imalsp', 'stenloaisp', 'sghichu'];
    public $timestamps = false;
}
