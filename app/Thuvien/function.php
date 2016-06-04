<?php 
//chuyển hóa tiếng anh - tiếng việt
function stripUnicode($str){
	if(!$str) return false;
	$unicode = array(
		'a' => 'á|à|ả|ã|ạ|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ',
		'A' => 'Á|À|Ả|Ã|Ạ|Ắ|Ằ|Ẳ|Ẵ|Ặ|Â|Ấ|Ầ|Ẩ|Ẫ|Ậ',
		'd' => 'đ',
		'D' => 'Đ',
		'e' => 'é|è|ẻ|ẹ|ế|ề|ể|ệ',
		'E' => 'É|È|Ẻ|Ẹ|Ế|Ề|Ể|Ệ',
		'i' => 'í|ì|ỉ|ĩ|ị',
		'I' => 'Í|Ì|Ỉ|Ĩ|Ị',
		'o' => 'ó|ò|ỏ|õ|ọ|ố|ồ|ổ|ỗ|ộ|ớ|ờ|ở|ỡ|ợ',
		'O' => 'Ó|Ò|Ỏ|Õ|Ọ|Ố|Ồ|Ổ|Ỗ|Ộ|Ớ|Ờ|Ở|Ỡ|Ợ',
		'u' => 'ú|ù|ủ|ũ|ụ|ứ|ừ|ử|ữ|ự',
		'U' => 'Ú|Ù|Ủ|Ũ|Ụ|Ứ|Ừ|Ử|Ữ|Ự',
		'y' => 'ý|ỳ|ỷ|ỹ|ỵ',
		'Y' => 'Ý|Ỳ|Ỷ|Ỹ|Ỵ'
	);
	 foreach($unicode as $khongdau=>$codau) {
	 	$arr=explode("|", $codau);
	 	$str = str_replace($arr, $khongdau, $str);
	 }
	 return $str;
}

function changeTitle($str){
	$str= trim($str);
	if ($str=="") return "";
	$str = str_replace('"', '', $str);
	$str = str_replace("'", '', $str);
	$str = stripUnicode($str);
	$str = mb_convert_case($str,MB_CASE_LOWER,'utf-8');
	//MB_CASE_UPPER /MB_CASE_TITLE /MB_CASE_LOWER
	$str = str_replace(' ', '-', $str);
	return $str;
}
//đệ quy phân cấp menu
function cate_parent($data, $parent =0, $str ="--",$select =0) {
	foreach($data as $val){
		$id = $val["id"];
		$name = $val["name"];
		if($select !=0 && $id ==$select){

		}
		if($val["parent_id"] == $parent){
			if($select !=0 && $id ==$select){
				echo "<option value='$id' selected='selected'>$str $name</option>";
			}else {	
				echo "<option value='$id'>$str $name</option>";
			}
			cate_parent($data, $id, $str."--",$select );
		}
	}
}
?>