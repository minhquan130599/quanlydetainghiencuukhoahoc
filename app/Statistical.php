<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;
class Statistical extends Model
{
    /**
     * Thống kê số lượng đề tài theo loại đề tài (đã nghiệm thu) theo loại đề tài
     * Yêu cầu: Đề tài đó đã có nội dung nghiệm thu
     * @return void
     * @author asus
     **/
    public function getStatisticalTopicCategory() 
    {
    	// DB::enableQueryLog();
    	$result = DB::table('tblloaidetai AS ldt')
    				->leftJoin('tbldetai AS dt', 'dt.pk_smaldt', '=', 'ldt.pk_smaldt')
    				->select(DB::raw('ldt.stenldt, ldt.pk_smaldt, COUNT(dt.pk_imadt) AS dem'))
    				->whereIn('dt.pk_imadt', function ($sql) {
					  	$sql->select('hddt.fk_imadt')
					  		->from('tblhoidong_detai AS hddt')
					  		->join('tblhoidong AS hd', 'hd.pk_imahd', '=', 'hddt.fk_imahd')
                            ->join('tblntdetaicoso AS nt', 'nt.pk_imahddt', '=', 'hddt.pk_imahddt');
    				});
    				
    	$result = $result->groupBy('ldt.pk_smaldt')
    					 ->get();
    	// dd(DB::getQueryLog());
    	return $result;
    } // End action index


    /**
     * Lấy ra danh sách các đề tài chưa nghiệm thu hoặc chậm muộn
     * @param (string) $state: chưa NT hoặc chậm muộn
     * @return void
     * @author asus
     **/
    public function getTopicAcceptionYetOrDelay($state = 'not') 
    {
    	//DB::enableQueryLog();
        $compare = ($state == 'not') ? '<' : '>';
    	$result = DB::table('tblloaidetai AS ldt')
    				->leftJoin('tbldetai AS dt', 'dt.pk_smaldt', '=', 'ldt.pk_smaldt')
    				->select(DB::raw('ldt.stenldt, ldt.pk_smaldt, COUNT(dt.pk_imadt) AS dem, dt.pk_imadt'))
    				->where(function($query) use ($compare) {
    					$query->where('dt.dngaykt', $compare, time())
    						  ->whereNotIn('dt.pk_imatt', [5, 6, 7])
    						  ->whereIn('dt.pk_imadt', function ($sql) {
    						  	$sql->select('fk_imadt')->from('tblhopdong');
    						});
    				});
    				
    	$result = $result->groupBy('ldt.pk_smaldt')
    					 ->get();
    	//dd(DB::getQueryLog());
    	return $result;
    } // End action index


    /**
     * Thống kê đề tài đã bị hủy
     * @link 
     * @return void
     * @author asus
     **/
    public function getDestroyTopic() 
    {
       $result = DB::table('tblloaidetai AS ldt')
                    ->leftJoin('tbldetai AS dt', 'dt.pk_smaldt', '=', 'ldt.pk_smaldt')
                    ->select(DB::raw('ldt.stenldt, ldt.pk_smaldt, COUNT(dt.pk_imadt) AS dem, dt.pk_imadt'))
                    ->where('dt.pk_imatt', '=', 7)
                    ->groupBy('ldt.pk_smaldt')
                    ->get();
        return $result;
    } // End action getDestroyTopic


     /**
     * Thống kê đề tài đã thanh lý do không đạt yêu cầu báo cáo tiến độ
     * @link 
     * @return void
     * @author asus
     **/
    public function getLiquidationTopic() 
    {
        // DB::enableQueryLog();
        $result = DB::table('tblloaidetai AS ldt')
                    ->leftJoin('tbldetai AS dt', 'dt.pk_smaldt', '=', 'ldt.pk_smaldt')
                    ->select(DB::raw('ldt.stenldt, ldt.pk_smaldt, COUNT(dt.pk_imadt) AS dem, dt.pk_imadt'))
                    ->where(function($query) {
                        $query->where('dt.pk_imatt', '=', 6)
                              ->whereNotIn('dt.pk_imadt', function ($sql) {
                                $sql->select('fk_imadt')
                                    ->from('tblhoidong_detai AS hddt')
                                    ->join('tblhoidong AS hd', 'hd.pk_imahd', '=', 'hddt.fk_imahd')
                                    ->join('tblntdetaicoso AS nt', 'nt.pk_imahddt', '=', 'hddt.pk_imahddt');
                            });
                    });
                    
        $result = $result->groupBy('ldt.pk_smaldt')
                         ->get();
        // dd(DB::getQueryLog());
        return $result;
    } // End action index


    /**
     * Thống kê số lượng đề tài theo năm đề tài (đã nghiệm thu) 
     * Yêu cầu: Đề tài đó đã có nội dung nghiệm thu
     * @return void
     * @author asus
     **/
    public function getStatisticalTopicYear() 
    {
        // DB::enableQueryLog();
        $result = DB::table('tblnamdetai AS y')
                    ->leftJoin('tbldetai AS dt', 'dt.fk_smaloainam', '=', 'y.pk_smaloainam')
                    ->select(DB::raw('y.sonam, y.pk_smaloainam, COUNT(dt.pk_imadt) AS dem'))
                    ->whereIn('dt.pk_imadt', function ($sql) {
                        $sql->select('hddt.fk_imadt')
                            ->from('tblhoidong_detai AS hddt')
                            ->join('tblhoidong AS hd', 'hd.pk_imahd', '=', 'hddt.fk_imahd')
                            ->join('tblntdetaicoso AS nt', 'nt.pk_imahddt', '=', 'hddt.pk_imahddt');
                    });
                    
        $result = $result->groupBy('y.pk_smaloainam')
                         ->get();
        // dd(DB::getQueryLog());
        return $result;
    } // End action index

    /**
     * Lấy ra danh sách các đề tài chưa nghiệm thu hoặc chậm muộn
     * @param (string) $state: chưa NT hoặc chậm muộn
     * @return void
     * @author asus
     **/
    public function getTopicYetOrDelayByYear($state = 'not') 
    {
        //DB::enableQueryLog();
        $compare = ($state == 'not') ? '<' : '>';
        $result = DB::table('tblnamdetai AS y')
                    ->leftJoin('tbldetai AS dt', 'dt.fk_smaloainam', '=', 'y.pk_smaloainam')
                    ->select(DB::raw('y.sonam, y.pk_smaloainam, COUNT(dt.pk_imadt) AS dem'))
                    ->where(function($query) use ($compare) {
                        $query->where('dt.dngaykt', $compare, time())
                              ->whereNotIn('dt.pk_imatt', [5, 6, 7])
                              ->whereIn('dt.pk_imadt', function ($sql) {
                                $sql->select('fk_imadt')->from('tblhopdong');
                            });
                    });
                    
        $result = $result->groupBy('y.pk_smaloainam')
                          ->get();
        //dd(DB::getQueryLog());
        return $result;
    } // End action index


    /**
     * Thống kê đề tài đã bị hủy theo năm đề tài
     * @link 
     * @return void
     * @author asus
     **/
    public function getDestroyTopicByYear() 
    {
       $result = DB::table('tblnamdetai AS y')
                    ->leftJoin('tbldetai AS dt', 'dt.fk_smaloainam', '=', 'y.pk_smaloainam')
                    ->select(DB::raw('y.sonam, y.pk_smaloainam, COUNT(dt.pk_imadt) AS dem'))
                    ->where('dt.pk_imatt', '=', 7)
                    ->groupBy('y.pk_smaloainam')
                    ->get();
        return $result;
    } // End action getDestroyTopic


    /**
     * Thống kê đề tài đã thanh lý do không đạt yêu cầu báo cáo tiến độ
     * Theo năm đề tài
     * @return void
     * @author asus
     **/
    public function getLiquidationByYear() 
    {
        //DB::enableQueryLog();
        $result = DB::table('tblnamdetai AS y')
                    ->leftJoin('tbldetai AS dt', 'dt.fk_smaloainam', '=', 'y.pk_smaloainam')
                    ->select(DB::raw('y.sonam, y.pk_smaloainam, COUNT(dt.pk_imadt) AS dem'))
                    ->where(function($query) {
                        $query->where('dt.pk_imatt', '=', 6)
                              ->whereNotIn('dt.pk_imadt', function ($sql) {
                                $sql->select('fk_imadt')
                                    ->from('tblhoidong_detai AS hddt')
                                    ->join('tblhoidong AS hd', 'hd.pk_imahd', '=', 'hddt.fk_imahd')
                                    ->join('tblntdetaicoso AS nt', 'nt.pk_imahddt', '=', 'hddt.pk_imahddt');
                            });
                    });
                    
        $result = $result->groupBy('y.pk_smaloainam')
                         ->get();
        //dd(DB::getQueryLog());
        return $result;
    } // End action index
} // End class
