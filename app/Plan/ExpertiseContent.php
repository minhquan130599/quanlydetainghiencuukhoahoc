<?php

namespace App\Plan;

use Illuminate\Database\Eloquent\Model;
use DB;
class ExpertiseContent extends Model
{
    protected $table = 'tblbaocaotiendo';
    protected $primaryKey = 'pk_imabctd';
    //public $timestamps = false;

    /**
     * Lấy ra mã hội đồng thẩm định của đề tài.
     * @param (int) $topicID: Mã đề tài
     * @return void
     * @author asus <huu.phuong195@gmail.com>
     **/
    public function getExpertise($topicID, $councilCategory = 1)
    {
    	$result = DB::table('tblhoidong_kehoach AS hdkh')
    				->join('tblhoidong AS hd', 'hd.pk_imahd', '=', 'hdkh.fk_imahd')
    				->where('hdkh.fk_imadt', $topicID)
    				->where('hd.iloaihoidong', $councilCategory)
    				->select('hdkh.pk_imahdkh')
    				->first();
        if ( ! empty ($result) )
        {
            return $result->pk_imahdkh;
        }
    	return null;
    } // End action getExpertiseCouncil


    /**
     * Lấy danh sách kết quả thẩm định
     * @param (string)  $keyword: Từ khóa tìm kiếm
     * @param (int)     $councilCategory: Loại hội đồng, mặc định là thẩm định
     * @return array object
     * @author asus <huu.phuong195@gmail.com>
     **/
    public function getExpertiseResult($search_data, $councilCategory = 1)
    {
        // DB::enableQueryLog();
        $table_1 =  DB::table('tbldetai AS dt')
                    ->join('tblhoidong_kehoach AS hdkh', 'hdkh.fk_imadt', '=', 'dt.pk_imadt')
                    ->join('tblbaocaotiendo AS bctd', 'bctd.fk_imahdkh', '=', 'hdkh.pk_imahdkh')
                    ->join('tblhoidong AS hd', 'hd.pk_imahd', '=', 'hdkh.fk_imahd')
                    ->select(   'dt.pk_imadt',      'dt.stendt',        'dt.pk_imatt',
                                'hd.iloaihoidong',  'hd.stenhd',        'hd.pk_imahd',
                                'bctd.pk_imabctd',  'bctd.dngaybc',     'bctd.snoidung',
                                'bctd.bketqua',     'bctd.bsendmail',   'bctd.updated_at'
                    );

        $table_2 = DB::table('tblbaocaotiendo')
                    ->select(DB::raw('MAX(pk_imabctd) AS max'))
                    ->groupBy('fk_imahdkh');


    	$result = DB::table(DB::raw("({$table_1->toSql()}) AS b1"))
                    ->join(DB::raw("({$table_2->toSql()}) AS b2"), 'b1.pk_imabctd', '=', 'b2.max')
                    ->select('b1.pk_imadt', 'b1.stendt', 'b1.pk_imatt', 'b1.stenhd', 'b1.pk_imabctd', 'b1.dngaybc',
                            'b1.snoidung', 'b1.bketqua', 'b1.bsendmail', 'b1.pk_imahd')
                    ->where('b1.iloaihoidong', $councilCategory);

        if ( ! empty ($search_data['council']) )
        {
            $result = $result->where('b1.pk_imahd', '=', $search_data['council']);
        }


        if ( ! empty ($search_data['topic']) )
        {
            $result = $result->where('b1.pk_imadt', '=', $search_data['topic']);
        }

        if ( strlen ($search_data['ketqua']) > 0 )
        {
            $result = $result->where('b1.bketqua', '=', $search_data['ketqua']);
        }

        if ( strlen ($search_data['dngaybc']) > 0 )
        {
            $result = $result->where('b1.dngaybc', '=', $search_data['dngaybc']);
        }

       	$result = $result->orderBy('b1.updated_at', 'DESC')
                         ->orderBy('b1.bsendmail', 'ASC')
                         ->orderBy('b1.pk_imabctd', 'DESC')->paginate(10);
        // dd(DB::getQueryLog());
    	return $result;
    } // End action getExpertiseResult


    /**
     * Lấy ra nội dung thẩm định từ mã báo cáo tiến độ
     * @param (int) $id: Mã báo cáo tiến độ
     * @return void
     * @author asus
     **/
    public function getContent($id)
    {
        $result = DB::table('tblbaocaotiendo AS bctd')
                    ->join('tblhoidong_kehoach AS hdkh', 'hdkh.pk_imahdkh', '=', 'bctd.fk_imahdkh')
                    ->select('bctd.*', 'hdkh.fk_imadt')
                    ->where('bctd.pk_imabctd', $id)
                    ->first();
        return $result;
    } // End action getContent


    /**
     * Lấy báo cáo tiến độ của đề tài
     * @param (int)     $topicID: Mã đề tài
     * @param  (int)    $type: Loại hội đồng (1 => Thẩm định, 2 => Khảo sát)
     * @return void
     * @author asus
     **/
    public function getContentTopic($topicID, $type)
    {
        DB::enableQueryLog();
        $result = DB::table('tbldetai AS dt')
                    ->join('tblhoidong_kehoach AS hdkh', 'hdkh.fk_imadt', '=', 'dt.pk_imadt')
                    ->join('tblbaocaotiendo AS bctd', 'bctd.fk_imahdkh', '=', 'hdkh.pk_imahdkh')
                    ->where('dt.pk_imadt', $topicID)
                    ->where('bctd.iloaiduyet', $type)
                    ->orderBy('bctd.pk_imabctd', 'DESC')
                    ->select('dt.stendt', 'bctd.*')
                    ->get();
        // pr(DB::getQueryLog());
        return $result;
    } // End action getContentTopic


    /**
     * Lấy ra thông tin chủ nhiệm
     * @param int $id: Mã báo cáo tiến độ
     * @return void
     * @author asus
     **/
    public function getLeader($id)
    {
        $result = DB::table('tblbaocaotiendo AS bctd')
                    ->join('tblhoidong_kehoach AS hdkh', 'bctd.fk_imahdkh', '=', 'hdkh.pk_imahdkh')
                    ->join('tbldetai AS dt', 'dt.pk_imadt', '=', 'hdkh.fk_imadt')
                    ->join('tblthamgiadetai AS tgdt', 'tgdt.pk_imadt', '=', 'dt.pk_imadt')
                    ->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
                    ->where('bctd.pk_imabctd', $id)
                    ->where('tgdt.pk_imavt', 3)
                    ->select('bctd.pk_imabctd', 'dt.stendt', 'cb.shocvan', 'cb.semail')
                    ->first();
        return $result;
    } // End action getLeader
} // End class
