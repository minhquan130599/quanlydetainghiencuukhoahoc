<?php

namespace App\Deploy;

use Illuminate\Database\Eloquent\Model;
use App\Plan\Topic;
use DB;
class Liquidation extends Model
{
    /**
     * Thêm hội đồng thanh lý
     * Từ mảng các mã đề tài từ client post lên. Update trạng thái hiện tại của
     * đề tài đó vào cột pk_imattcu
     * Trạng thái hiện tại của các đề tài đó sẽ được up lên 6
     * Thêm bảng hội đồng & hội đồng đề tài
     * @link
     * @return void
     * @author asus
     **/
    public function insertLiquidation($post_data, $topic_data, $status)
    {
        DB::transaction(function () use ($post_data, $topic_data, $status) {
            try {
                // Thêm bảng hội đồng
                $id = DB::table('tblhoidong')->insertGetId($post_data); // Lấy được mã vừa thêm

                $topicCouncil = array();
                for ($i=0, $count = count($topic_data); $i<$count; $i++) {
                    $topicCouncil[] = array(
                        'fk_imahd' => $id,
                        'fk_imadt' => $topic_data[$i]
                    );
                }

                // Thêm dữ liệu vào bảng hội đồng đề tài
                DB::table('tblhoidong_detai')->insert($topicCouncil);

                // Lấy ra các mã trạng hiện tại của các đề tài được chọn
                $data = DB::table('tbldetai')->whereIn('pk_imadt', $topic_data)
                                             ->select('pk_imadt', 'stendt', 'pk_imattcu', 'pk_imatt')
                                             ->get();

                foreach ($data AS $key => $topic) {
                    $row = Topic::findOrFail($topic->pk_imadt);
                    $row->pk_imattcu = $topic->pk_imatt;
                    $row->save();
                }

                DB::table('tbldetai')
                         ->whereIn('pk_imadt', $topic_data)
                         ->update(['pk_imatt' => $status]);

            } catch (\Exception $e) {
                return fail_data();
            }
        });

    } // End action insertLiquidation


    /**
     * Document
     * @link
     * @return void
     * @author asus
     **/
    public function updateLiquidation($post_data, $councilID)
    {
    	$result = DB::table('tblhoidong_detai')->where('fk_imahd', '=', $councilID)->delete();
        return DB::table('tblhoidong_detai')->insert($post_data);
    } // End action updateLiquidation


    /**
     * Lấy danh sách đề tài của hội đồng với điều kiện đề tài đó chưa có nội dung
     * thanh lý
     * Vậy đề tài đó phải NOT IN bảng tbldetai_thanhly
     * @param (int)     $id: Mã hội đồng
     * @return void
     * @author asus
     **/
    public function getTopciOfCouncil($id)
    {
        $sql = "SELECT dt.pk_imadt, dt.stendt, dt.smasodetai, dt.pk_imattcu
                FROM tbldetai AS dt INNER JOIN tblhoidong_detai AS hddt
                ON hddt.fk_imadt = dt.pk_imadt
                INNER JOIN tblhoidong AS hd
                ON hd.pk_imahd = hddt.fk_imahd
                WHERE dt.pk_imadt NOT IN (SELECT pk_imadt FROM tbldetai_thanhly)
                AND hd.pk_imahd = ?";
        $result = DB::select($sql, array($id));
        return $result;
    } // End action getTopciOfCouncil


    /**
     * Lấy dữ liệu đề tài, hội đồng thanh lý
     * Left join với bảng tbldetai_thanhly để check đã có nội dung thanh lý hay chưa?
     * @param (int)     $id: Mã hội đồng
     * @return void
     * @author asus
     **/
    public function getTopic($councilCategory = 4)
    {
        $result = DB::table('tblhoidong AS hd')
                    ->join('tblhoidong_detai AS hddt', 'hddt.fk_imahd', '=', 'hd.pk_imahd')
                    ->join('tbldetai AS dt', 'dt.pk_imadt', '=', 'hddt.fk_imadt')
                    ->leftJoin('tbldetai_thanhly AS tl', 'tl.pk_imadt', '=', 'dt.pk_imadt')
                    ->select('hd.pk_imahd', 'dt.stendt', 'tl.dngaytl', 'hd.smahoidong')
                    ->where('hd.iloaihoidong', $councilCategory)
                    ->get();
        return $result;
    } // End action getTopic
} // End class
