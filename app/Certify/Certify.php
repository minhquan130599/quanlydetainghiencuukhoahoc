<?php

namespace App\Certify;

use Illuminate\Database\Eloquent\Model;
use DB;

class Certify extends Model
{
    protected $table = 'tbldetai_chungnhan';
    protected $primaryKey = 'pk_imadt';
    public $timestamps = false;

    /**
     * Lấy ra danh sách đề tài đc chứng nhận (có phân trang)
     * @param (string)  $keyword: Từ khóa tìm kiếm
     * @return void
     * @author asus
     **/
    public function getCertify($keyword = null) 
    {
    	$result = DB::table('tbldetai AS dt')
    				->leftJoin('tblthamgiadetai AS tgdt', 'tgdt.pk_imadt', '=', 'dt.pk_imadt')
    				->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
    				->join('tbldetai_chungnhan AS cn', 'cn.pk_imadt', '=', 'dt.pk_imadt')
    				->where('tgdt.pk_imavt', 3);
        if (!empty ($keyword))
        {
            $keyword = trim($keyword);
            $result = $result->where(function($query) use ($keyword) {
                $query->where('dt.stendt', 'LIKE', '%'.$keyword.'%')
                      ->orWhere('cb.shocvan', 'LIKE', '%'.$keyword.'%')
                      ->orWhere('cn.snguoikycn', 'LIKE', '%'.$keyword.'%')
                      ->orWhere('cn.sghichu', 'LIKE', '%'.$keyword.'%');
            });
        }
            $result = $result->select('dt.pk_imadt', 'dt.stendt', 'dt.smasodetai', 'cn.dngaycapgiaycn', 'cn.snguoikycn', 'cn.sghichu',
    					'cn.filebanmem', 'cn.bquyenbaocao', 'cn.bsendmail', 
                        'cb.shocvan', 'cb.semail'
    				)
                    ->orderBy('cn.bsendmail', 'ASC')
                    ->orderBy('cn.created_at', 'DESC')
    				->paginate(15);
    	return $result;
    } // End action getCertify

    /**
     * Lấy ra danh sách đề tài đc chứng nhận (theo chủ nhiệm)
     * @param (string)  $keyword: Từ khóa tìm kiếm
     * @return void
     * @author asus
     **/
    public function getCertifyForResearcher($id) 
    {
        $result = DB::table('tbldetai AS dt')
                    ->leftJoin('tblthamgiadetai AS tgdt', 'tgdt.pk_imadt', '=', 'dt.pk_imadt')
                    ->Join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
                    ->Join('tbldetai_chungnhan AS cn', 'cn.pk_imadt', '=', 'dt.pk_imadt')
                    ->where('tgdt.pk_imavt', 3)
                    ->where('cb.pk_smacanbo',$id);
            $result = $result->select('dt.pk_imadt', 'dt.stendt', 'dt.smasodetai', 'cn.dngaycapgiaycn', 'cn.snguoikycn', 'cn.sghichu',
                        'cn.filebanmem', 'cn.bquyenbaocao', 'cn.bsendmail', 
                        'cb.shocvan', 'cb.semail'
                    )
                    ->orderBy('cn.bsendmail', 'ASC')
                    ->orderBy('cn.created_at', 'DESC')
                    ->get();
        return $result;
    }


    /**
     * Lấy ra chứng nhận của 1 đề tài
     * @param: (int)    $topicID: Mã đề tài
     * @return object
     * @author asus
     **/
    public function getOneCertify($topicID) 
    {
        $result = DB::table('tbldetai_chungnhan')
                    ->where('pk_imadt', '=', $topicID)
                    ->select('*')
                    ->first();
        return $result;
    } // End action getOneCertify
} // End class
