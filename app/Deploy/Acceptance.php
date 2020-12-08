<?php

namespace App\Deploy;

use Illuminate\Database\Eloquent\Model;
use DB;
class Acceptance extends Model
{
	protected $table      = 'tblhoidong_detai';
	protected $primaryKey = 'pk_imahddt';
	protected $fillable   = ['pk_imahddt', 'fk_imahd', 'fk_imadt'];
	public $timestamps    = false;


	/**
     * Thêm hội đồng nghiệm thu
     * Từ hội đồng => Tiến hành thêm hội đồng thẩm định
     * @param [] 	$post_data: Mảng dữ liệu truyền lên 
     * @param []	$topic_data: Mảng các đề tài được tích
     * @param []	$topic_status: Trạng thái của đề tài để cập nhật
     * @return void
     * @author asus
     **/
    public function insert($post_data, $topic_data, $topic_status) 
    {
    	// Thêm bảng hội đồng
    	$id = DB::table('tblhoidong')->insertGetId($post_data);

    	/**
    	 * Có được mã hội đồng. 
    	 * Insert bảng hội đồng kế hoạch với mã hội đồng làm khóa ngoại
    	 */
        $acceptance_data = array();
        for ($i=0, $count = count($topic_data); $i<$count; $i++) {
            $acceptance_data[] = [
                'fk_imahd' => $id,
                'fk_imadt' => $topic_data[$i]
            ];
        }

        DB::table('tblhoidong_detai')->insert($acceptance_data);

        /**
         * Sau khi tạo hội đồng xong. 
         * Tiến hành cập nhật lại trạng thái của các đề tài
         */
         DB::table('tbldetai')->whereIn('pk_imadt', $topic_data)->update(['pk_imatt' => $topic_status]);
    } // End action insert


    /**
     * Lấy danh sách hội đồng nghiệm thu (Chức năng tra cứu)
     * @param  (int) $councilCategory: Loại hội đồng (mặc định là 3 => nghiệm thu)
     * @return array object
     * @author asus
     **/
    public function getTopic($councilCategory = 3) 
    {
        $explainContent = DB::table('tblntdetaicoso')
                              ->select(DB::raw('pk_imahddt, MAX(pk_imantcs) AS max'))
                              ->groupBy('pk_imahddt');
       
        $result = DB::table('tblhoidong AS hd')
                    ->join('tblhoidong_detai AS hddt', 'hddt.fk_imahd', '=', 'hd.pk_imahd')
                    ->join('tbldetai AS dt', 'dt.pk_imadt', '=', 'hddt.fk_imadt')
                    ->leftJoin(DB::raw("({$explainContent->toSql()}) AS ntdt"), 'ntdt.pk_imahddt', '=', 'hddt.pk_imahddt')
                    ->select('hd.pk_imahd', 'dt.stendt', 'ntdt.pk_imahddt', 'hd.smahoidong')
                    ->where('hd.iloaihoidong', $councilCategory)
                    ->get();
        return $result;
    } // End action getTopic


    /**
     * Lấy danh sách đề tài của hội đồng với điều kiện đề tài đó chưa có nội dung nghiệm thu
     * Bởi nếu nghiệm thu rồi thì ko được chỉnh sửa các đề tài thuộc hội đồng nữa
     * Vậy đề tài đó phải NOT IN bảng tblhoidong_detai
     * @param (int)     $id: Mã hội đồng 
     * @return void
     * @author asus
     **/
    public function getTopciOfCouncil($id) 
    {
        $sql = "SELECT dt.pk_imadt, dt.stendt, dt.smasodetai 
                FROM tbldetai AS dt INNER JOIN tblhoidong_detai AS hddt 
                ON hddt.fk_imadt = dt.pk_imadt 
                WHERE hddt.pk_imahddt NOT IN (SELECT pk_imahddt FROM tblntdetaicoso) AND hddt.fk_imahd = ?";
        $result = DB::select($sql, array($id));
        return $result;
    } // End action getTopciOfCouncil


    /**
     * Cập nhật đề tài mà hội đồng đề tài đó đã chọn
     * @param (int) $id: Mã hội đồng
     * @param [] $post_data: Mảng dữ liệu đề chèn lại vào bảng tblhoidong_kehoach
     * @param [] $newArray: Mảng đề tài mới để cập nhật trạng thái
     * @param [] $oldArray: Mảng đề tài cũ được phải update về trạng thái trước đó. Mảng này là các đề tài (chưa có nội dung thẩm định)
     * @param (int) $oldStatus: Trạng thái cũ
     * @param (int) $newStatus: Trạng thái mới
     * @return void
     * @author asus
     **/
    public function updateTopic($id, $post_data, $oldArray, $newArray, $oldStatus, $newStatus) 
    {
        /**
         * Xóa tất mã đề tài(khóa ngoại) trong bảng tblhoidong_detai với mã hội đồng là $id 
         * nhưng chỉ xóa các bản ghi mà đề tài chưa có nội dung nghiệm thu
         * Chèn lại mảng đề tài vào trong bảng tblhoidong_detai
         * Mảng đề tài cũ update về trạng thái trước đó
         * Mảng đề tài mới update lên trạng thái mới
         */
        
        // Lấy ra các đề tài đã có nội dung thẩm định của hội đồng ($id)
        $sql = "SELECT hddt.fk_imadt, dt.stendt FROM tblhoidong_detai AS hddt
                INNER JOIN tbldetai AS dt
                ON hddt.fk_imadt = dt.pk_imadt
                INNER JOIN tblntdetaicoso AS ntdt
                ON ntdt.pk_imahddt = hddt.pk_imahddt
                WHERE hddt.fk_imahd = ?";
        $data = DB::select($sql, array($id));
        $hasExplain = array();
        foreach ($data AS $topic) {
            $hasExplain[] = $topic->fk_imadt;
        }

        DB::table('tblhoidong_detai')->where('fk_imahd', $id)->whereNotIn('fk_imadt', $hasExplain)->delete();
        DB::table('tblhoidong_detai')->insert($post_data);
        DB::table('tbldetai')->whereIn('pk_imadt', $oldArray)->update(['pk_imatt' => $oldStatus]);
        DB::table('tbldetai')->whereIn('pk_imadt', $newArray)->update(['pk_imatt' => $newStatus]);
    } // End action updateTopic
} // End class
