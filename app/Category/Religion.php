<?php

namespace App\Category;

use Illuminate\Database\Eloquent\Model;

class Religion extends Model
{
    protected $table = 'tbltongiao';
    protected $primaryKey = 'pk_imatongiao';
    public $timestamps = false;
}
