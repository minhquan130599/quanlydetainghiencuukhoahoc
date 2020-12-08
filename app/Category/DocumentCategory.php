<?php

namespace App\Category;

use Illuminate\Database\Eloquent\Model;

class DocumentCategory extends Model
{
    protected $table = 'tblloaivanban';
    protected $primaryKey = 'pk_imaloaivb';
    public $timestamps = false;

    public function documents()
    {
        return $this->hasMany('App\Category\Document', 'pk_imaloaivb', 'pk_imaloaivb');
    }
}
