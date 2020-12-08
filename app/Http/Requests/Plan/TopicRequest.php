<?php

namespace App\Http\Requests\Plan;

use App\Http\Requests\Request;

class TopicRequest extends Request
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'txtTenDetai'  => 'required|unique:tbldetai,stendt,' . Request::segment(4) . ',pk_imadt',
            'txtCanbo'     => 'required',
            'txtLinhvuc'   => 'required',
            'txtCapthiet'  => 'required',
            'txtNoidung'   => 'required',
            'txtKetcau'    => 'required',
            'txtThoigianThuchien'      => 'required',
            'txtChunhiem'  => 'required',
            'txtLoaiDetai' => 'required',
            'txtLoaihinh'  => 'required',
            'txtNamDetai'  => 'required',
            'txtMuctieu'   => 'required',
            'txtPhuongphap'    => 'required',
            'txtSanpham'   => 'required',
            'txtKinhphi' => 'numeric'
        ];
    }

    public function messages() {
        return [
            'txtTenDetai.required'  => 'Vui lòng nhập tên đề tài',
            'txtTenDetai.unique'    => 'Tên đề tài đã được sử dụng',
            'txtCanbo.required'     => 'Vui lòng nhập người cập nhật',
            'txtLinhvuc.required'   => 'Vui lòng chọn lĩnh vực ',
            'txtCapthiet.required'  => 'Vui lòng nhập tính cấp thiết',
            'txtNoidung.required'   => 'Vui lòng nhập nội dung đề tài',
            'txtKetcau.required'    => 'Vui lòng nhập kết cấu đề tài',
            'txtThoigianThuchien.required'      => 'Vui lòng nhập thời gian thực hiện đề tài',
            'txtChunhiem.required'  => 'Vui lòng chọn chủ nhiệm',
            'txtLoaiDetai.required' => 'Vui lòng chọn loại đề tài',
            'txtLoaihinh.required'  => 'Vui lòng chọn loại hình',
            'txtNamDetai.required'  => 'Vui lòng chọn năm đề tài',
            'txtMuctieu.required'   => 'Vui lòng nhập mục tiêu đề tài',
            'txtPhuongphap.required'    => 'Vui lòng nhập phương pháp đề tài',
            'txtSanpham.required'   => 'Vui lòng nhập sản phẩm đề tài',
            'txtKinhphi.numeric' => 'Kinh phí phải là kiểu số'
        ];
    }
}
