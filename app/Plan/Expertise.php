<?php

namespace App\Plan;

use Illuminate\Database\Eloquent\Model;
use DB;
class Expertise extends Model
{
    protected $table = 'tblhoidong_kehoach';
    protected $primaryKey = 'pk_imahdkh';
    public $timestamps = false;


    /**
     * Thêm hội đồng
     * Từ hội đồng => Tiến hành thêm hội đồng thẩm định
     * @param [] 	$post_data: Mảng dữ liệu truyền lên
     * @param []	$topic_data: Mảng các đề tài được tích
     * @param []	$topic_status: Trạng thái của đề tài để cập nhật
     * @return void
     * @author asus
     **/
    public function insert($post_data, $topic_data, $topic_status)
    {
        DB::transaction(function () use ($post_data, $topic_data, $topic_status) {
            try {
                // Thêm bảng hội đồng
                $id = DB::table('tblhoidong')->insertGetId($post_data);

                /**
                 * Có được mã hội đồng.
                 * Insert bảng hội đồng kế hoạch với mã hội đồng làm khóa ngoại
                 */
                $expertise_data = array();
                for ($i=0, $count = count($topic_data); $i<$count; $i++) {
                    $expertise_data[] = [
                        'fk_imahd' => $id,
                        'fk_imadt' => $topic_data[$i]
                    ];
                }


                DB::table('tblhoidong_kehoach')->insert($expertise_data);

                /**
                 * Sau khi tạo hội đồng xong.
                 * Tiến hành cập nhật lại trạng thái của các đề tài
                 */
                DB::table('tbldetai')->whereIn('pk_imadt', $topic_data)
                                     ->update(['pk_imatt' => $topic_status]);
            } catch (\Exception $e) {
                return fail_data();
            }
        });
    } // End action insert


    /**
     * Lấy danh sách hội đồng thẩm định (Chức năng: Tra cứu hội đồng thẩm định)
     * @param (int) $categoryCouncil: Loại hội đồng. Mặc định là 1 ~ thẩm định
     * @return void
     * @author asus
     **/
    public function getTopic($categoryCouncil = 1)
    {
        $expertiseContent = DB::table('tblbaocaotiendo')
                    ->select(DB::raw('pk_imabctd, fk_imahdkh, MAX(pk_imabctd) AS max'))
                    ->groupBy('fk_imahdkh');

    	$result = DB::table('tblhoidong AS hd')
    				->join('tblhoidong_kehoach AS hdkh', 'hdkh.fk_imahd', '=', 'hd.pk_imahd')
    				->join('tbldetai AS dt', 'dt.pk_imadt', '=', 'hdkh.fk_imadt')
                    ->leftJoin(DB::raw("({$expertiseContent->toSql()}) AS bctd"), 'bctd.fk_imahdkh', '=', 'hdkh.pk_imahdkh')
                    ->leftJoin('tbldangkybaove AS dk', 'dk.fk_imadt', '=', 'dt.pk_imadt')
    				->select('hd.pk_imahd', 'dt.stendt', 'bctd.fk_imahdkh', 'dt.pk_imatt', 'dk.nguoidangky', 'dt.pk_imadt')
    				->where('hd.iloaihoidong', $categoryCouncil)
    				->get();
    	return $result;
    } // End action getTopic


    /**
     * Lấy danh sách đề tài thẩm định của hội đồng đó
     * Điều kiện là đề tài đó chưa có nội dung thẩm định (không nằm trong bảng tblbaocaotiendo)
     * @param (int) $id: Mã hội đồng
     * @return void
     * @author asus
     **/
    public function getTopciOfCountcil($id)
    {
        $sql = "SELECT dt.pk_imadt, dt.stendt, dt.smasodetai
                FROM tbldetai AS dt INNER JOIN tblhoidong_kehoach AS hdkh
                ON hdkh.fk_imadt = dt.pk_imadt
                WHERE hdkh.pk_imahdkh NOT IN (SELECT fk_imahdkh FROM tblbaocaotiendo) AND fk_imahd = ?";
        $result = DB::select($sql, array($id));
        return $result;
    } // End action getTopciOfCountcil


    /**
     * Cập nhật đề tài mà hội đồng thẩm định đó đã chọn
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
         * Xóa tất mã đề tài(khóa ngoại) trong bảng tblhoidong_kehoach với mã hội đồng là $id
         * nhưng chỉ xóa các bản ghi mà đề tài chưa có nội dung tẩm định
         * Chèn lại mảng đề tài vào trong bảng tblhoidong_kehoach
         * Mảng đề tài cũ update về trạng thái trước đó
         * Mảng đề tài mới update lên trạng thái mới
         */
        DB::transaction(function () use ($id, $post_data, $oldArray, $newArray, $oldStatus, $newStatus) {
            // Lấy ra các đề tài đã có nội dung thẩm định của hội đồng ($id)
            $sql = "SELECT hdkh.fk_imadt, dt.stendt FROM `tblhoidong_kehoach` AS hdkh
                    INNER JOIN tbldetai AS dt
                    ON hdkh.fk_imadt = dt.pk_imadt
                    INNER JOIN tblbaocaotiendo AS bctd
                    ON bctd.fk_imahdkh = hdkh.pk_imahdkh
                    WHERE hdkh.fk_imahd = ?";
            $data = DB::select($sql, array($id));

            // Mảng là các đề tài đã có nội dung báo cáo tiến độ
            $hasExpertiseContent = array();
            foreach ($data AS $topic) {
                $hasExpertiseContent[] = $topic->fk_imadt;
            }

            try {
                // Thực thi 1 loạt truy vấn. Nếu sai thì khôi phục trạng thái cũ của dữ liệu
                DB::table('tblhoidong_kehoach')->where('fk_imahd', $id)->whereNotIn('fk_imadt', $hasExpertiseContent)->delete();
                DB::table('tblhoidong_kehoach')->insert($post_data);
                DB::table('tbldetai')->whereIn('pk_imadt', $oldArray)->update(['pk_imatt' => $oldStatus]);
                DB::table('tbldetai')->whereIn('pk_imadt', $newArray)->update(['pk_imatt' => $newStatus]);
            } catch (\Exception $e) {
                return redirect()->route('app.errors.fail_data');
                exit;
            }

        }); // End giao dịch
    } // End action updateTopic


    /**
     * Lấy danh sách hội đồng thẩm định, có phân trang
     * @param array $search_data: Mảng dữ liệu tim kiếm
     * @param (int)     $councilCategory: Loại hội đồng (VD: Thẩm định, khỏa sát)
     * @return array object
     * @author asus
     **/
    public function getExpertise($search_data, $councilCategory)
    {
        //DB::enableQueryLog();
        $result = DB::table('tblhoidong')
                    ->select('*');

        if ( ! empty ($search_data['criteria']) && strlen( trim($search_data['keyword']) > 0) )
        {
            switch ($search_data['criteria'])
            {
                case 'tenhoidong':
                    $result = $result->where('stenhd', 'LIKE', '%'.$search_data['keyword'].'%');
                    break;

                case 'maso':
                    $result = $result->where('smahoidong', 'LIKE', '%'.$search_data['keyword'].'%');
                    break;

                case 'quyetdinh':
                    $result = $result->where('squyetdinh', 'LIKE', '%'.$search_data['keyword'].'%');
                    break;

                case 'ngaythanhlap':
                    $result = $result->where('dngaythanhlap', '=', $search_data['keyword']);
                    break;

                case 'ngaylamviec':
                    $result = $result->where('dngaylamviec', '=', $search_data['keyword']);
                    break;

                default:
                    // code
                    break;
            }
        }
        elseif ( strlen( trim($search_data['keyword']) ) > 0 )
        {
            $result = $result->where(function ($query) use ($search_data) {
                $query->where('stenhd', 'LIKE', '%'.$search_data['keyword'].'%')
                      ->orWhere('smahoidong', 'LIKE', '%'.$search_data['keyword'].'%')
                      ->orWhere('squyetdinh', 'LIKE', '%'.$search_data['keyword'].'%')
                      ->orWhere('dngaythanhlap', '=', $search_data['keyword'])
                      ->orWhere('dngaylamviec', '=', $search_data['keyword']);
            });

        }

        $result = $result->where('tblhoidong.iloaihoidong', $councilCategory)
                         ->orderBy('pk_imahd', 'DESC')
                         ->paginate(10);
        //dd(DB::getQueryLog());
        return $result;
    } // End action getExpertise

} // End class
