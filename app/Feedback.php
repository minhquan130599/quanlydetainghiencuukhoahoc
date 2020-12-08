<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Feedback extends Model
{
    protected $table = 'tbl_feedback';
    protected $primaryKey = 'feedback_id';
    public $timestamps = true;
}
