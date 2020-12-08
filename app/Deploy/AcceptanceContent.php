<?php

namespace App\Deploy;

use Illuminate\Database\Eloquent\Model;
use DB;

class AcceptanceContent extends Model
{
    protected $table = 'tblntdetaicoso';
    protected $primaryKey = 'pk_imantcs';
    public $timestamps = false;

    /**
     * Lấy danh sách danh mục xếp loại
     * @link
     * @return void
     * @author asus
     **/
    public function getRate()
    {
    	$result = DB::table('tbldmxeploai')->get();
    	return $result;
    } // End action getRate


    /**
     * Lấy kết quả nghiệm thu có phân trang
     * @link
     * @return void
     * @author asus
     **/
    public function getResult($search_data, $keyword = null)
    {
    	$result = DB::table('tblntdetaicoso AS ntdt')
    				->join('tblhoidong_detai AS hddt', 'hddt.pk_imahddt', '=', 'ntdt.pk_imahddt')
    				->join('tblhoidong AS hd', 'hd.pk_imahd', '=', 'hddt.fk_imahd')
    				->join('tbldetai AS dt', 'dt.pk_imadt', '=', 'hddt.fk_imadt')
    				->join('tbldmxeploai AS xl', 'xl.pk_imadmxeploai', '=', 'ntdt.fk_imadmxeploai')
    				->select('dt.pk_imadt', 'dt.stendt', 'dt.pk_imatt', 'hd.stenhd', 'xl.stendmxeploai', 'ntdt.dngayntcs',
    					'ntdt.pk_imantcs', 'ntdt.bsendmail'
    				);

        if ( !empty ($search_data['council']) )
        {
            $result = $result->where('hd.pk_imahd', '=', $search_data['council']);
        }

        if ( !empty ($search_data['topic']) )
        {
            $result = $result->where('dt.pk_imadt', '=', $search_data['topic']);
        }

        if ( !empty ($search_data['xeploai']) )
        {
            $result = $result->where('xl.pk_imadmxeploai', '=', $search_data['xeploai']);
        }

        if ( !empty ($search_data['dngaybc']) )
        {
            $result = $result->where('ntdt.dngayntcs', '=', $search_data['dngaybc']);
        }

        $result = $result->orderBy('ntdt.bsendmail', 'ASC')
                         ->orderBy('ntdt.pk_imantcs', 'DESC')
                         ->paginate(10);
    	return $result;
    } // End action getResult


    /**
     * Lấy ra danh sách các đề tài đã chọn nghiệm thu
     * nhưng chưa có nội dung nghiệm thu
     * @param (int)     $topicStatus: Trạng thái của đề tài
     * @return array object
     * @author asus
     **/
    public function getTopic($topicStatus)
    {
        $sql = "SELECT dt.pk_imadt, dt.stendt
                FROM tbldetai AS dt
                INNER JOIN tblhoidong_detai AS hddt
                ON hddt.fk_imadt = dt.pk_imadt
                WHERE dt.pk_imatt = ?
                AND hddt.pk_imahddt NOT IN (SELECT pk_imahddt FROM tblntdetaicoso)
                ";
        $result = DB::select($sql, [$topicStatus]);
        return objectToArray($result);
    } // End action getTopic


    /**
     * Document
     * @param (int) $id: Mã nghiệm thu cơ sở
     * @return void
     * @author asus
     **/
    public function getTopicName($id)
    {
        $result = DB::table('tblntdetaicoso AS ntdt')
                    ->join('tblhoidong_detai AS hddt', 'hddt.pk_imahddt', '=', 'ntdt.pk_imahddt')
                    ->join('tblhoidong AS hd', 'hd.pk_imahd', '=', 'hddt.fk_imahd')
                    ->join('tbldetai AS dt', 'dt.pk_imadt', '=', 'hddt.fk_imadt')
                    ->join('tbldmxeploai AS xl', 'xl.pk_imadmxeploai', '=', 'ntdt.fk_imadmxeploai')
                    ->where('ntdt.pk_imantcs', $id)
                    ->select('dt.pk_imadt', 'dt.stendt')
                    ->first();
        return $result;
    } // End action getTopicName


    /**
     * Document
     * @link
     * @return void
     * @author asus
     **/
    public function getLeader($topicID, $role)
    {
        $result = DB::table('tbldetai AS dt')
                    ->join('tblthamgiadetai AS tgdt', 'tgdt.pk_imadt', '=', 'dt.pk_imadt')
                    ->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
                    ->join('tblhoidong_detai AS hddt', 'hddt.fk_imadt', '=', 'dt.pk_imadt')
                    ->join('tblntdetaicoso AS ntdt', 'ntdt.pk_imahddt', '=', 'hddt.pk_imahddt')
                    ->where('dt.pk_imadt', $topicID)
                    ->where('tgdt.pk_imavt', 3)
                    ->select('dt.pk_imadt', 'dt.stendt', 'cb.semail', 'cb.shocvan', 'ntdt.pk_imantcs')
                    ->first();
        return $result;
    } // End action getLeader
} // End class
