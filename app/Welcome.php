<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;
class Welcome extends Model
{
    /**
     * Document
     * @param (int) $categoryCouncil: Loại hội đồng 
     * @return void
     * @author asus
     **/
    public function countExpertise($categoryCouncil) 
    {
    	$query = "
			select
		    count(*) as aggregate 
		from
		    (      select
		        `dt`.`pk_imadt`,
		        `dt`.`stendt`,
		        `dt`.`pk_imatt`,
		        `hd`.`iloaihoidong`,
		        `hd`.`stenhd`,
		        `bctd`.`pk_imabctd`,
		        `bctd`.`dngaybc`,
		        `bctd`.`snoidung`,
		        `bctd`.`bketqua`,
		        `bctd`.`bsendmail`       
		    from
		        `tbldetai` as `dt`       
		    inner join
		        `tblhoidong_kehoach` as `hdkh`       
		            on `hdkh`.`fk_imadt` = `dt`.`pk_imadt`       
		    inner join
		        `tblbaocaotiendo` as `bctd`       
		            on `bctd`.`fk_imahdkh` = `hdkh`.`pk_imahdkh`       
		    inner join
		        `tblhoidong` as `hd`       
		            on `hd`.`pk_imahd` = `hdkh`.`fk_imahd`     )      AS b1 
		inner join
		    (
		        select
		            MAX(pk_imabctd) AS max       
		        from
		            `tblbaocaotiendo`       
		        group by
		            `fk_imahdkh`     
		    ) AS b2      
		        on `b1`.`pk_imabctd` = `b2`.`max` 
		where
		    `b1`.`iloaihoidong` = ?
    	";
    	$result = DB::select($query, [$categoryCouncil]);
    	return $result[0]->aggregate;;
    } // End action countExpertise

    /**
	 * Đếm danh sách đề tài chậm muộn
	 * Cách làm: Lấy các đề tài nằm trong bảng hợp đồng
	 * và chưa đăng ký bảo vệ và đã quá hạn
	 * @return void
	 * @author asus
	 **/
	public function countDelayTopic() 
	{
		$result = DB::table('tbldetai AS dt')
					->join('tblthamgiadetai AS tgdt', 'tgdt.pk_imadt', '=', 'dt.pk_imadt')
					->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
					->select('dt.pk_imadt', 'dt.stendt', 'cb.shocvan', 'dt.dngaykt', 'cb.semail')
					->where('tgdt.pk_imavt', '=', 3)
					->where('dt.pk_imadt', '!=', 4)
					->where('dt.dngaykt', '<', time())
					->whereIn('dt.pk_imadt', function ($query) {
						$query->select('fk_imadt')->from('tblhopdong');
					});
		return $result->count();
	} // End action getDelayTopic

	/**
	 * Đếm các đề tài thanh lý
	 * @link 
	 * @return void
	 * @author asus
	 **/
	public function countAcceptance() 
	{
		$query = "
			select
			    count(*) as aggregate 
			from
			    `tblntdetaicoso` as `ntdt` 
			inner join
			    `tblhoidong_detai` as `hddt` 
			        on `hddt`.`pk_imahddt` = `ntdt`.`pk_imahddt` 
			inner join
			    `tblhoidong` as `hd` 
			        on `hd`.`pk_imahd` = `hddt`.`fk_imahd` 
			inner join
			    `tbldetai` as `dt` 
			        on `dt`.`pk_imadt` = `hddt`.`fk_imadt` 
			inner join
			    `tbldmxeploai` as `xl` 
			        on `xl`.`pk_imadmxeploai` = `ntdt`.`fk_imadmxeploai`
		";

		$result = DB::select($query);
		return $result[0]->aggregate;
	} // End action countAcceptance


	/**
	 * Đếm các đề tài đã thanh lý
	 * @link 
	 * @return void
	 * @author asus
	 **/
	public function countLiquidation() 
	{
		$query = "
					select
					    count(*) as aggregate 
					from
					    `tbldetai` as `dt` 
					inner join
					    `tblthamgiadetai` as `tgdt` 
					        on `tgdt`.`pk_imadt` = `dt`.`pk_imadt` 
					inner join
					    `tblcanbo` as `cb` 
					        on `cb`.`pk_smacanbo` = `tgdt`.`pk_smacanbo` 
					inner join
					    `tblhoidong_detai` as `hddt` 
					        on `hddt`.`fk_imadt` = `dt`.`pk_imadt` 
					inner join
					    `tblhoidong` as `hd` 
					        on `hd`.`pk_imahd` = `hddt`.`fk_imahd` 
					inner join
					    `tbldetai_thanhly` as `tl` 
					        on `tl`.`pk_imadt` = `dt`.`pk_imadt` 
					left join
					    `tbldetai_chungnhan` as `cn` 
					        on `cn`.`pk_imadt` = `tl`.`pk_imadt` 
					where
					    `hd`.`iloaihoidong` = ? 
					    and `tgdt`.`pk_imavt` = ?
				";
		$result = DB::select($query, [4, 3]);
		return $result[0]->aggregate;
	} // End action countLiquidation


	/**
	 * Đếm các đề tài sẽ đượ triển khai
	 * @link 
	 * @return void
	 * @author asus
	 **/
	public function countDeploy() 
	{
		$query = "
					select
					    count(*) as aggregate 
					from
					    `tbldetai` as `dt` 
					inner join
					    `tblthamgiadetai` as `tgdt` 
					        on `tgdt`.`pk_imadt` = `dt`.`pk_imadt` 
					inner join
					    `tblcanbo` as `cb` 
					        on `cb`.`pk_smacanbo` = `tgdt`.`pk_smacanbo` 
					inner join
					    `tbldonvi` as `dv` 
					        on `dv`.`pk_imadv` = `cb`.`pk_imadv` 
					where
					    `tgdt`.`pk_imavt` = ? 
					    and `dt`.`pk_imadt` in (
					        select
					            `fk_imadt` 
					        from
					            `tblhopdong`
					    )
		";
		$result = DB::select($query, [3]);
		return $result[0]->aggregate;
	} // End action countDeploy


	/**
	 * Document
	 * @link 
	 * @return void
	 * @author asus
	 **/
	public function getNoteExpetise($categoryCouncil, $id = null) 
	{
		$query = "
			SELECT
			    dt.pk_imadt,
			    dt.stendt,
			    dt.pk_imatt,
			    hd.pk_imahd,
			    hd.stenhd,
			    hd.dngaylamviec,
			    cb.pk_smacanbo  
			FROM
			    tbldetai AS dt  
			INNER JOIN
			    tblhoidong_kehoach as hdkh  
			        ON hdkh.fk_imadt = dt.pk_imadt  
			INNER JOIN
			    tblhoidong AS hd  
			        ON hd.pk_imahd = hdkh.fk_imahd
			INNER JOIN 
				tblthamgiadetai as tgdt
					ON tgdt.pk_imadt = dt.pk_imadt
			LEFT JOIN 
				tblcanbo as cb
					ON cb.pk_smacanbo = tgdt.pk_smacanbo
			WHERE
			    pk_imahdkh NOT IN (
			        SELECT
			            fk_imahdkh 
			        FROM
			            tblbaocaotiendo
			    )  
			    AND hd.iloaihoidong = ? ";
			( !empty($id) ? $query = $query."AND cb.pk_smacanbo = ? " : '');
			$query = $query."ORDER BY
			    STR_TO_DATE(hd.dngaylamviec,'%d/%m/%Y') ASC
			";
			// pr($query);
		return !empty($id) ? (
				DB::select($query, [$categoryCouncil, !empty($id) ? $id : ''])
			) : (
				DB::select($query, [$categoryCouncil])
			);
		// return DB::select($query, [$categoryCouncil, !empty($id) ? $id : '']);
	} // End action getNoteExpetise


	/**
	 * Document
	 * @link 
	 * @return void
	 * @author asus
	 **/
	public function getNoteAcceptance($id = null) 
	{
		$query = "
			SELECT
			    dt.pk_imadt,
			    dt.stendt,
			    dt.pk_imatt,
			    hd.*  
			FROM
			    tbldetai AS dt  
			INNER JOIN
			    tblhoidong_detai as hddt  
			        ON hddt.fk_imadt = dt.pk_imadt  
			INNER JOIN
			    tblhoidong AS hd  
			        ON hd.pk_imahd = hddt.fk_imahd
			INNER JOIN 
				tblthamgiadetai as tgdt
					ON tgdt.pk_imadt = dt.pk_imadt
			LEFT JOIN 
				tblcanbo as cb
					ON cb.pk_smacanbo = tgdt.pk_smacanbo  
			WHERE
			    hddt.pk_imahddt NOT IN (
			        SELECT
			            pk_imahddt 
			        FROM
			            tblntdetaicoso
			    )  
			    AND hd.iloaihoidong = ? ";
			( !empty($id) ? $query = $query."AND cb.pk_smacanbo = ? " : '');
			$query = $query."ORDER BY
			    STR_TO_DATE(hd.dngaylamviec,'%d/%m/%Y') ASC
			";
			return !empty($id) ? (
					DB::select($query, [3, !empty($id) ? $id : ''])
				) : (
					DB::select($query, [3])
				);
	} // End action getNoteAcceptance


	/**
	 * Document
	 * @link 
	 * @return void
	 * @author asus
	 **/
	public function getNoteLiquidation($id = null) 
	{
		$query = "
			SELECT
			    dt.pk_imadt,
			    dt.stendt,
			    dt.pk_imatt,
			    hd.*  
			FROM
			    tbldetai AS dt  
			INNER JOIN
			    tblhoidong_detai as hddt  
			        ON hddt.fk_imadt = dt.pk_imadt  
			INNER JOIN
			    tblhoidong AS hd  
			        ON hd.pk_imahd = hddt.fk_imahd
			INNER JOIN 
				tblthamgiadetai as tgdt
					ON tgdt.pk_imadt = dt.pk_imadt
			LEFT JOIN 
				tblcanbo as cb
					ON cb.pk_smacanbo = tgdt.pk_smacanbo  
			WHERE
			    dt.pk_imadt NOT IN (
			        SELECT
			            pk_imadt 
			        FROM
			            tbldetai_thanhly
			    )  
			    AND hd.iloaihoidong = ? ";
			( !empty($id) ? $query = $query."AND cb.pk_smacanbo = ? " : '');
			$query = $query."ORDER BY
			    STR_TO_DATE(hd.dngaylamviec,'%d/%m/%Y') ASC
			";
			return !empty($id) ? (
					DB::select($query, [4, !empty($id) ? $id : ''])
				) : (
					DB::select($query, [4])
				);  
		// 	ORDER BY
		// 	    STR_TO_DATE(hd.dngaylamviec, '%d/%m/%Y') ASC
		// ";
		// return DB::select($query, [4,$id]);
	} // End action getNoteLiquidation
}
