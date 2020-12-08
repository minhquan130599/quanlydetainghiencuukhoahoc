<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;
class Manual extends Model
{
    protected $table = 'tbl_manual';
    protected $primaryKey = 'id';
    public $timestamps = true;


    public function getManual($staff_group = null)
    {
        $result = DB::table('tblnhomcb AS ncb')
                    ->join('tbl_manual AS m', 'm.pk_imanhomcb', '=', 'ncb.pk_imanhomcb')
                    ->select('m.*', 'ncb.stennhomcb');
        if (!empty ($staff_group) && $staff_group != 3)
        {
            $result = $result->where('ncb.pk_imanhomcb', $staff_group);
        }

        $result = $result->get();
        return $result;
    }
}
