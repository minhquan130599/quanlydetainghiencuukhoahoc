<?php

namespace App\Category;

use Illuminate\Database\Eloquent\Model;
use DB;
class TopicJoin extends Model
{
    protected $table = 'tblthamgiadetai';
    protected $primaryKey = 'pk_imadt';
    public $timestamps = false;


    public function getTopicJoin($id)
    {
    	$result['member'] = DB::table('tblthamgiadetai AS tgdt')
    						  ->join('tblcanbo as cb','cb.pk_smacanbo','=','tgdt.pk_smacanbo')
							  ->where('tgdt.pk_imadt', $id)
							  ->whereNotIn('tgdt.pk_imavt',[3])
							  ->select('cb.pk_smacanbo','cb.shodem','tgdt.pk_imavt')
							  ->get();
    	$result['role'] = DB::select('SELECT * FROM tblvaitro');
    	return $result;
    }
}
