<?php

namespace App\Deploy;

use Illuminate\Database\Eloquent\Model;
use DB;

class Expense extends Model
{
    protected $table = 'tblphanbokinhphi';
    protected $primaryKey = 'pk_imapbkp';
    public $timestamps = false;


    public function getExpense()
    {
        $result = DB::table('tbldetai AS dt')
            ->join('tblphanbokinhphi AS pbkp', 'pbkp.pk_imadt', '=', 'dt.pk_imadt')
            ->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'pbkp.fk_smacanbo')
            ->select('pbkp.*', 'dt.stendt', 'dt.smasodetai', 'cb.shodem')
            ->orderBy('pbkp.pk_imapbkp', 'DESC')
            ->get();
        return $result;
    }
}
