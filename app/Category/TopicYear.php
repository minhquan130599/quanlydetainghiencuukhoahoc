<?php

namespace App\Category;

use Illuminate\Database\Eloquent\Model;

class TopicYear extends Model
{
    protected $table = 'tblnamdetai';
    protected $primaryKey = 'pk_smaloainam';
    protected $fillable = ['pk_smaloainam', 'sonam'];
    public $timestamps = false;
}
