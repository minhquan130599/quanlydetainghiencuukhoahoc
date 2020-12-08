<?php

namespace App\Deploy;

use Illuminate\Database\Eloquent\Model;
use DB;
class Delay extends Model
{
    protected $table = 'tbldetai_giahan';
    protected $primaryKey = 'id';
    public $timestamps = true;

    /**
     * Cập nhật ngày ra hạn.Update nhiều bản ghi
     * @link (array)  	$data: Mảng dữ liệu cập nhật ngày ra hạn
     * @return void
     * @author asus
     **/
    public function updateExtension($data) 
    {
    	$query = "UPDATE tbldetai SET dngaykt = CASE";
    	foreach ($data AS $v)
    	{
    		$query .= sprintf(" WHEN pk_imadt = %s THEN %s", $v['fk_imadt'], $v['dngayrahan']); 
    	}
		
		$query .= " ELSE dngayrahan END WHERE pk_imadt in (";

		foreach ($data AS $v)
		{
			$query .= sprintf('%s', $v['fk_imadt']);
		}
    	
    	$query = rtrim($query, ',');
    	$query .= ")";
    	
    	return DB::update($query);
    } // End action updateExtension

    public function InsertGetID($data)
    {
        $id = DB::table('tbldetai_giahan')->insertGetId($data);
        return $id;
    }

    public function GetAllDelay($macb)
    {
        $result = DB::table('tbldetai AS dt')
                    ->join('tblthamgiadetai AS tgdt', 'tgdt.pk_imadt', '=', 'dt.pk_imadt')
                    ->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
                    ->join('tbldonvi AS dv', 'dv.pk_imadv', '=', 'cb.pk_imadv')
                    ->join('tbldetai_giahan AS gh','gh.fk_imadt','=','dt.pk_imadt')
                    ->select('dt.pk_imadt', 'dt.smasodetai', 'dt.stendt', 'dt.dngaybd', 'dt.dngaykt',
                        'dv.stendv', 'cb.shocvan','gh.dngayrahan','gh.id','gh.xacnhan')
                    ->where('tgdt.pk_imavt', 3)
                    ->whereIn('dt.pk_imadt', function ($query) {
                        $query->select('fk_imadt')->from('tblhopdong');
                    });
        if ($macb)
        {
            $result = $result->where('cb.pk_smacanbo',$macb);
        }
        $result = $result->orderBy('dt.pk_imatt', 'ASC')->get();
        return $result;
    }

    public function GetAllRenewal()
    {
        $result = DB::table('tbldetai AS dt')
                    ->join('tbldetai_giahan AS gh', 'gh.fk_imadt', '=', 'dt.pk_imadt')
                    ->join('tblthamgiadetai AS tgdt', 'tgdt.pk_imadt', '=', 'dt.pk_imadt')
                    ->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
                    ->select(DB::raw('MAX(id) AS id,COUNT(fk_imadt) as sl, gh.fk_imadt,gh.updated_at,dt.stendt,dt.dngaybd,cb.shodem'))
                    ->where('tgdt.pk_imavt',3)
                    ->groupBy('gh.fk_imadt')
                    ->get();
        return $result;
    }

    public function GetInfo($id)
    {
        $result = DB::table('tbldetai AS dt')
                    ->join('tblthamgiadetai AS tgdt', 'tgdt.pk_imadt', '=', 'dt.pk_imadt')
                    ->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
                    ->select('dt.stendt','dt.dngaybd','cb.shodem')
                    ->where([
                        ['tgdt.pk_imavt','=',3],
                        ['dt.pk_imadt','=',$id]
                    ])
                    ->first();
        return $result;
    }
}
