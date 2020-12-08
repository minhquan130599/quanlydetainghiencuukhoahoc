<?php

namespace App\Category;

use Illuminate\Database\Eloquent\Model;
use DB;

class Unit extends Model
{
    protected $table = 'tbldonvi';
    protected $primaryKey = 'pk_imadv';
    public $timestamps = false;

    /**
     * Lấy danh sách đơn vị
     * @link 
     * @param
     * @return result
     * @author Hoang Do <dvhoangfh1@gmail.com>
     **/
    public function getAllUnit($keyword = null) 
    {
    	$result = DB::table('tbldonvi as dv')
    				->join('tblcapdv AS cdv', 'cdv.pk_imacapdv', '=', 'dv.pk_imacapdv')
    				->select('dv.pk_imadv','dv.stendv','dv.sdiachi','dv.sdienthoai','dv.semail','cdv.stencapdv');			
        if (!empty ($keyword)) {
            $result = $result->where(function($query) use ($keyword) {
                $query->where('dv.stendv', 'LIKE', '%'.$keyword.'%')
                      ->orWhere('dv.sdiachi', 'LIKE', '%'.$keyword.'%')
                      ->orWhere('dv.semail', 'LIKE', '%'.$keyword.'%')
                      ->orWhere('dv.sdvchuquan', 'LIKE', '%'.$keyword.'%')
                      ->orWhere('cdv.stencapdv', 'LIKE', '%'.$keyword.'%');
            });
        }
        $result = $result->paginate(10);
    	return $result;
    } // End action index
    
}
