<?php

namespace App\Category;

use Illuminate\Database\Eloquent\Model;
use DB;
class TopicCategory extends Model
{
    protected $table = 'tblloaidetai';
    protected $primaryKey = 'pk_smaldt';
    protected $fillable = ['pk_smaldt', 'stenldt'];
    public $timestamps = false;
    public $incrementing = false;

    public function getNextID()
    {
        $result = DB::table('tblloaidetai')
                    ->select(DB::raw('MAX(SUBSTRING(pk_smaldt, 5)*1.0) AS max'))
                    ->first();
        $id = !empty($result->max) ? sprintf('%s_%02d', 'LDT', ($result->max)+1) : 'LDT_01';
        return $id;
    }
}
