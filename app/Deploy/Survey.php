<?php

namespace App\Deploy;

use Illuminate\Database\Eloquent\Model;
use DB;
class Survey extends Model
{
    /**
     * Model này giống với Model Expertise
     * Tuy nhiên, Expertise cho phần lập kế hoạch
     * Còn Survey cho phần triển khai
     * Nên sẽ có những truy vấn khác nhau dù cùng 1 chức năng
     */

    public function getDeployTopicNotChoose($statusID)
    {
    	$result = DB::table('tbldetai AS dt')
    		->join('tblhopdong AS hd', 'hd.fk_imadt', '=', 'dt.pk_imadt')
    		->select('dt.pk_imadt', 'dt.stendt', 'dt.smasodetai')
    		->where('dt.pk_imatt', $statusID)
    		->whereIn('dt.pk_imadt', function ($query) {
    			$query->select('fk_imadt')
    				  ->from('tblhoidong_kehoach')
    				  ->get();
    		});
    	return $result->get();
    }

    /**
	 * Document
	 * @link 
	 * @return void
	 * @author asus
	 **/
	public function getSurveyTopic($status) 
	{
		$result = DB::table('tbldetai AS dt')
					->select('dt.pk_imadt', 'dt.smasodetai', 'dt.stendt')
					->where('pk_imatt', $status)
					->whereIn('dt.pk_imadt', function ($query) {
						$query->select('fk_imadt')
							 ->from('tblhopdong')
							 ->get();
					})
					->get();
		return $result;
	} // End action getSurveyTopic


    /**
     * Lấy ra những đề tài đã khảo sát thành công
     * Cách làm: Lấy ra lần khảo sát MAX của đề tài đó & sét kết quả
     * @param  
     * @return void
     * @author asus
     **/
    public function getConditionTopic($councilCategory, $result) 
    {
        $table_1 =  DB::table('tbldetai AS dt')
                      ->join('tblthamgiadetai AS tgdt', 'tgdt.pk_imadt', '=', 'dt.pk_imadt')
                      ->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
                      ->join('tblhoidong_kehoach AS hdkh', 'hdkh.fk_imadt', '=', 'dt.pk_imadt')
                      ->join('tblbaocaotiendo AS bctd', 'bctd.fk_imahdkh', '=', 'hdkh.pk_imahdkh')
                      ->join('tblhoidong AS hd', 'hd.pk_imahd', '=', 'hdkh.fk_imahd')
                      ->select('dt.pk_imadt', 'dt.stendt', 'dt.smasodetai', 'dt.pk_imatt', 'hd.iloaihoidong', 'hd.stenhd', 
                            'bctd.pk_imabctd', 'bctd.bketqua', 'cb.shocvan', 'tgdt.pk_imavt');

        $table_2 = DB::table('tblbaocaotiendo')
                    ->select(DB::raw('MAX(pk_imabctd) AS max'))
                    ->groupBy('fk_imahdkh');
        

        $result = DB::table(DB::raw("({$table_1->toSql()}) AS b1"))
                    ->join(DB::raw("({$table_2->toSql()}) AS b2"), 'b1.pk_imabctd', '=', 'b2.max')
                    ->select('b1.pk_imadt', 'b1.stendt', 'b1.smasodetai', 'b1.stenhd', 'b1.pk_imabctd', 'b1.bketqua', 'b1.shocvan')
                    ->where('b1.pk_imavt', 3)
                    ->where('b1.iloaihoidong', $councilCategory)
                    ->where('b1.bketqua', $result)
                    ->where('b1.pk_imatt', 3);
        
       
        $result = $result->orderBy('b1.pk_imabctd', 'DESC')->get();
        return $result;
    } // End action getConditionTopic

    /**
     * Lấy ra những đề tài đã khảo sát thành công
     * Cách làm: Lấy ra lần khảo sát MAX của đề tài đó & sét kết quả
     * @param  
     * @return void
     * @author asus
     **/
    public function getConditionTopicForUser($councilCategory, $result,$id) 
    {
        $table_1 =  DB::table('tbldetai AS dt')
                      ->join('tblthamgiadetai AS tgdt', 'tgdt.pk_imadt', '=', 'dt.pk_imadt')
                      ->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
                      ->join('tblhoidong_kehoach AS hdkh', 'hdkh.fk_imadt', '=', 'dt.pk_imadt')
                      ->join('tblbaocaotiendo AS bctd', 'bctd.fk_imahdkh', '=', 'hdkh.pk_imahdkh')
                      ->join('tblhoidong AS hd', 'hd.pk_imahd', '=', 'hdkh.fk_imahd')
                      ->select('dt.pk_imadt', 'dt.stendt', 'dt.smasodetai', 'dt.pk_imatt', 'hd.iloaihoidong', 'hd.stenhd', 
                            'bctd.pk_imabctd', 'bctd.bketqua', 'cb.shocvan', 'tgdt.pk_imavt','cb.pk_smacanbo');

        $table_2 = DB::table('tblbaocaotiendo')
                    ->select(DB::raw('MAX(pk_imabctd) AS max'))
                    ->groupBy('fk_imahdkh');
        

        $result = DB::table(DB::raw("({$table_1->toSql()}) AS b1"))
                    ->join(DB::raw("({$table_2->toSql()}) AS b2"), 'b1.pk_imabctd', '=', 'b2.max')
                    ->select('b1.pk_imadt', 'b1.stendt', 'b1.smasodetai', 'b1.stenhd', 'b1.pk_imabctd', 'b1.bketqua', 'b1.shocvan')
                    ->where('b1.pk_imavt', 3)
                    ->where('b1.iloaihoidong', $councilCategory)
                    ->where('b1.bketqua', $result)
                    ->where('b1.pk_imatt', 3);
        
       
        $result = $result->orderBy('b1.pk_imabctd', 'DESC')->where('b1.pk_smacanbo',$id)->get();
        return $result;
    } // End action getConditionTopic
} // End class
