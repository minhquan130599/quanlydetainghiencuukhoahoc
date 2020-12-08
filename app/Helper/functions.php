<?php
/**
 * Hàm in hoa tất cả các chữ cái đầu của họ tên. VD: nguyễn văn an
 * @param (string)	$name: Họ tên (chưa đúng định dạng)
 * @return (string) 	=> Nguyễn Văn An
 * @author asus <huu.phuong195@gmail.com>
 */
function capitalize_unicode($name) {
	$name = trim($name);
	return mb_convert_case($name, MB_CASE_TITLE, 'UTF-8');
}


/**
 * Hàm tìm số trong chuỗi
 * @param (string)	$str: Chuỗi input
 * @return integer 	=> Phần tử số cuối cùng của chuỗi
 * @author asus <huu.phuong195@gmail.com>
 */
function num_in_str($str) {
	preg_match_all('!\d+!', $str, $matches);
	$result = end($matches[0]) ? end($matches[0]) : null;
	return $result;
}


/**
 * Lưu thông điệp vào mảng tin nhắn
 * @param int 		$row: Số bản ghi bị ảnh hưởng bởi truy vấn
 * @param string 	$message: Thông điệp tin nhắn
 * @return []
 */
function showMessage($row, $message) {
	$result = ($row > 0) ? array('success',  $message . ' thành công')
	: array('error', $message . ' thất bại');
	return $result;
}


/**
 * In nhanh một mảng
 * @param []	$data: Mảng dữ liệu cần in
 * @author asus <huu.phuong195@gmail.com>
 */
function pr($data) {
	echo "<meta charset='UTF-8' />";
	echo "<pre>"; print_r ($data); echo "</pre>";
	exit();
}

/**
 * Trả về dữ liệu json & không bị lỗi font Unicode
 * @param [array, int, string v.v..]	$data: biến dữ liệu
 * @author asus <huu.phuong195@gmail.com>
 */
function toJson($data) {
	echo json_encode($data);
	exit();
}



/**
 * Cắt chữ cuối cùng trong một chuỗi
 * @param (string)	$string: Chuỗi đầu vào
 * @return (string) Chữ cuối cùng của $string
 * @author asus <huu.phuong195@gmail.com>
 */
function last_word($string) {
	$string = trim($string);
	$pieces = explode(' ', $string);
	return array_pop($pieces);	// Lấy ra phần tử cuối cùng của mảng vừa đc explore ở trên
}




function current_year() {
	if (date('Y', time()) == 2015)
		return date('Y', time());
	return '2015 - ' . date('Y', time());
}


function keepSelect($data, $name, $id, $firstItem, $keepItem = null) {
	echo "<option value=''>$firstItem</option>";
	foreach ($data as $item) {
		echo "<option value='". $item[$id] ."' ";
		if (!empty($keepItem) && $item[$id] == $keepItem) {
			echo "selected='selected'";
		}
		echo ">$item[$name]</option>";
	}
}



function priority($data, $keepItem = null, $title = null) {
	echo "<option value=''>-- Chọn vị trí --</option>";
	for ($i=1, $max = max($data[0]); $i<=$max+1; $i++) {
		echo "<option value='$i'";
		if (!empty($keepItem) && $keepItem == $i) {
			echo "selected='selected";
		}
		echo ">$i</option>";
	}
}


function timestamps($time) {
	return strtotime(str_replace('/', '-', $time));
}


function event_status($before, $after) {
	$now = time();
	if(($now >= $before) && ($now) <= $after) {
		$class = "success";
	}elseif ($now < $before) {
		$class = "info";
	}else {
		$class = "danger";
	}
	return $class;
}


function concatElement($data1, $data2, $ma_sukien) {
	for ($i=0, $count = count($data1); $i<$count; $i++) {
		$array[$i] = array(
			'ma_binhluan'  => time() - 1456047882 + $i,	// Luôn luôn là duy nhất.
			'ma_sukien'    => $ma_sukien,				// Và nó là hằng số
			'ma_thanhvien' => $data1[$i],
			'ghichu'       => $data2[$i]
			);
	}
	return $array;
}



function getAnswerStatus($answerStatus) {
	if (strstr($answerStatus, 'cch'))
		return '<button title="Đã chuyển câu hỏi" type="button" class="btn btn-sm btn-primary"><span class="glyphicon glyphicon-share"></span></button>';
	else if ($answerStatus == 'dtl')
		return '<button title="Đã trả lời" type="button" class="btn btn-sm btn-primary"><span class="glyphicon glyphicon-check"></span></button>';
	else if ($answerStatus == 'ctl' || $answerStatus == '')
		return '<button title="Chưa trả lời" type="button" class="btn btn-sm btn-primary"><span class="glyphicon glyphicon-edit"></span></button>';
	else
		return null;
}


function ctl_red($answerStatus) {
	if ($answerStatus == 'ctl' || empty($answerStatus)) {
		echo "class='bg-danger'";
	}
}


/**
 * Chuyển hướng người dùng với biến GET nếu có
 * @return redirect URL
 * @author asus <huu.phuong195@gmail.com>
 */
function redirectWithParam() {
	$CI =& get_instance();

	$url = $CI->config->site_url($CI->uri->uri_string());
	return $_SERVER['QUERY_STRING'] ? $url.'?'.$_SERVER['QUERY_STRING'] : $url;
}

function addElementArray($sobaodanhString) {
	$sobaodanhArray = str_split($sobaodanhString);
	if (9 - count($sobaodanhArray) > 0) {
		$element_num = 9 - count($sobaodanhArray);
		for ($i=0; $i<$element_num; $i++) {
			array_unshift($sobaodanhArray, "");
		}
	}
	return $sobaodanhArray;
}


function addElementString($cmndString) {
	$cmndArray = str_split($cmndString);
	if (12 - count($cmndArray) > 0) {
		$element_num = 12 - count($cmndArray);
		for ($i=0; $i<$element_num; $i++) {
			array_unshift($cmndArray, "");
		}
	}
	return $cmndArray;
}

/**
 * Chuyển hướng với biến GET hiện tại
 */
function current_url_with_param()
{
	$CI =& get_instance();

	$url = $CI->config->site_url($CI->uri->uri_string());
	return $_SERVER['QUERY_STRING'] ? $url.'?'.$_SERVER['QUERY_STRING'] : $url;
}


/**
 * Tăng key + 1 để tăng STT
 */
function pluskey($array) {
	// if (!empty (array_values($array))) {
	// 	return array_combine(range(1, count($array)), array_values($array));
	// }
	//return 0;
	return $array;
}



function getdiachi($diachi, $element) {
	$data = explode('*|*', $diachi);
	return $data[$element];
}


function editMavach($mavach) {
	$mavach_data = str_split($mavach);
	$inserted = array('-');
	$array_position = array(3, 7, 11, 15);
	for ($i=1; $i<count($mavach_data); $i++) {
		if (in_array($i, $array_position)) {
			array_splice($mavach_data, $i, 0, $inserted);
		}
	}
	return $mavach_data;
}


function replaceDiachi($diachi) {
	if (!empty($diachi) AND strstr($diachi, '*|*'))
		return str_replace('*|*', ', ', $diachi);
	else
		return $diachi;
}


function get_numerics($str) {
	preg_match_all('/\d+/', $str, $matches);
	return $matches[0];
}


function tiento($sohoso) {
	if (substr($sohoso, 0, 2) == 'OH') {
		return str_replace('OH', '99', $sohoso);
	}else if (substr($sohoso, 0, 2) == 'BD') {
		return str_replace('BD', '98', $sohoso);
	}else {
		return substr($sohoso, 2);
	}
}


function rsrank($stenhh, $stenhv, $staff_name) {
	if ($stenhh != 'Khác' && $stenhv != 'Khác') {
		return sprintf('%s.%s.%s', $stenhh, $stenhv, $staff_name);
	}elseif ($stenhh == 'Khác' && $stenhv != 'Khác') {
		return  sprintf('%s.%s', $stenhv, $staff_name);
	}
}

function numeric_order($page, $key, $limit) {
	if (empty ($page)) {
		$page = 1;
	}
	return ($page-1)*$limit + $key + 1;
}


function objectToArray($arrayObject)
{
	$data = json_encode($arrayObject);
	return json_decode($data, TRUE);
}


function statistical_by_criteria($query_data) {
	$array = array();
	foreach ($query_data as $k => $val) {
		$array[$val->pk_smaldt] = $val->dem;
	}
	return $array;
}

function statistical_by_year($query_data) {
	$array = array();
	foreach ($query_data as $k => $val) {
		$array[$val->pk_smaloainam] = $val->dem;
	}
	return $array;
}

function eachTr($date)
{
	$date = timestamps($date);
	if ($date >= time() + 86400)
	{
		echo 'class="success"';
	}
	else
	{
		echo 'class="danger"';
	}
}


function fail_data()
{
	echo '
	<h1 style="color: red;">Cảnh báo: Sai lệch dữ liệu</h1>
	<h2 class="text-justify">
		- Hệ thống phát hiện ra dữ liệu bị sai lệch bởi hành động của bạn. <br>
		- Để đảm bảo tính toàn vẹn dữ liệu, hệ thống đã khôi phục trạng thái cũ của dữ liệu. <br>
		- Vui lòng liên hệ SĐT: <a href="tel:01652803200">01652803200</a>, <a href="tel:0886686332">0886686332</a> hoặc gửi email tới địa chỉ:
		<a href="mailto:nguyenthimyhoa@gmail.com">nguyenthimyhoa@gmail.com</a>
		để được hỗ trợ kỹ thuật <br>
		- Click <a title="Quay về trang làm việc" href="/welcome">vào đây</a></strong>
		để quay về trang làm việc.
	</h2>
	';
	exit;
}

function unique_filename_upload($filename)
{
	$ext = pathinfo($filename, PATHINFO_EXTENSION);
	return date('d-m-Y', time()) . '__' . date('H-i-s', time()) . '__' . to_slug($filename) . '.' .$ext;
}

function to_slug($str) {
	$str = trim(mb_strtolower($str));
	$str = preg_replace('/(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)/', 'a', $str);
	$str = preg_replace('/(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)/', 'e', $str);
	$str = preg_replace('/(ì|í|ị|ỉ|ĩ)/', 'i', $str);
	$str = preg_replace('/(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ)/', 'o', $str);
	$str = preg_replace('/(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)/', 'u', $str);
	$str = preg_replace('/(ỳ|ý|ỵ|ỷ|ỹ)/', 'y', $str);
	$str = preg_replace('/(đ)/', 'd', $str);
	$str = preg_replace('/[^a-z0-9-\s]/', '', $str);
	$str = preg_replace('/([\s]+)/', '-', $str);
	return $str;
}

function mb_ucfirst($number)
{
	$str = convert_number_to_words($number);
	$data = mb_convert_case($str, MB_CASE_LOWER, 'UTF-8');
	$data = ucfirst($data);
	$array = explode(' ', $data);
	$array = array_filter($array);
	return implode(' ', $array) . ' đồng';
}

function convert_number_to_words($number) {

	$hyphen      = ' ';
	$conjunction = '  ';
	$separator   = ' ';
	$negative    = 'âm ';
	$decimal     = ' phẩy ';
	$dictionary  = array(
		0                   => 'Không',
		1                   => 'Một',
		2                   => 'Hai',
		3                   => 'Ba',
		4                   => 'Bốn',
		5                   => 'Năm',
		6                   => 'Sáu',
		7                   => 'Bẩy',
		8                   => 'Tám',
		9                   => 'Chín',
		10                  => 'Mười',
		11                  => 'Mười một',
		12                  => 'Mười hai',
		13                  => 'Mười ba',
		14                  => 'Mười bốn',
		15                  => 'Mười lăm',
		16                  => 'Mười sáu',
		17                  => 'Mười bảy',
		18                  => 'Mười tám',
		19                  => 'Mười chín',
		20                  => 'Hai mươi',
		30                  => 'Ba mươi',
		40                  => 'Bốn mươi',
		50                  => 'Năm mươi',
		60                  => 'Sáu mươi',
		70                  => 'Bảy mươi',
		80                  => 'Tám mươi',
		90                  => 'Chín mươi',
		100                 => 'trăm',
		1000                => 'ngàn',
		1000000             => 'triệu',
		1000000000          => 'tỷ',
		1000000000000       => 'nghìn tỷ',
		1000000000000000    => 'ngàn triệu triệu',
		1000000000000000000 => 'tỷ tỷ'
		);

	if (!is_numeric($number)) {
		return false;
	}

	if (($number >= 0 && (int) $number < 0) || (int) $number < 0 - PHP_INT_MAX) {
// overflow
		trigger_error(
			'convert_number_to_words only accepts numbers between -' . PHP_INT_MAX . ' and ' . PHP_INT_MAX,
			E_USER_WARNING
			);
		return false;
	}

	if ($number < 0) {
		return $negative . convert_number_to_words(abs($number));
	}

	$string = $fraction = null;

	if (strpos($number, '.') !== false) {
		list($number, $fraction) = explode('.', $number);
	}

	switch (true) {
		case $number < 21:
		$string = $dictionary[$number];
		break;
		case $number < 100:
		$tens   = ((int) ($number / 10)) * 10;
		$units  = $number % 10;
		$string = $dictionary[$tens];
		if ($units) {
			$string .= $hyphen . $dictionary[$units];
		}
		break;
		case $number < 1000:
		$hundreds  = $number / 100;
		$remainder = $number % 100;
		$string = $dictionary[$hundreds] . ' ' . $dictionary[100];
		if ($remainder) {
			$string .= $conjunction . convert_number_to_words($remainder);
		}
		break;
		default:
		$baseUnit = pow(1000, floor(log($number, 1000)));
		$numBaseUnits = (int) ($number / $baseUnit);
		$remainder = $number % $baseUnit;
		$string = convert_number_to_words($numBaseUnits) . ' ' . $dictionary[$baseUnit];
		if ($remainder) {
			$string .= $remainder < 100 ? $conjunction : $separator;
			$string .= convert_number_to_words($remainder);
		}
		break;
	}

	if (null !== $fraction && is_numeric($fraction)) {
		$string .= $decimal;
		$words = array();
		foreach (str_split((string) $fraction) as $number) {
			$words[] = $dictionary[$number];
		}
		$string .= implode(' ', $words);
	}

	return $string;
}