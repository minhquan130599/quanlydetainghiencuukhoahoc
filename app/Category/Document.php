<?php

namespace App\Category;

use Illuminate\Database\Eloquent\Model;
use DB;

class Document extends Model
{
    protected $table = 'tblvanban_bieumau';
    protected $primaryKey = 'pk_imavb';
    public $timestamps = false;

    public function document_category()
    {
        return $this->belongsTo('App\Category\DocumentCategory');
    }

    public function getDocument()
    {
        $result = DB::table('tblvanban_bieumau')
                    ->join('tblloaivanban', 'tblloaivanban.pk_imaloaivb', '=', 'tblvanban_bieumau.pk_imaloaivb')
                    ->select('tblvanban_bieumau.*', 'tblloaivanban.stenloaivb')
                    ->orderBy('tblvanban_bieumau.pk_imavb', 'DESC')
                    ->get();
        return $result;

    }
}
