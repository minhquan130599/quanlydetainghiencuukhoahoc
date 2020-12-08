<?php

namespace App\Http\Requests\Plan;

use App\Http\Requests\Request;

class ExpertiseContentRequest extends Request
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
            'txtDetai' => 'required|numeric',
            'txtNgayDuyet' => 'required|regex:/^([0-9]{2}+\/+([0-9]{2}+\/+([0-9]{4})))$/',
            'txtNoidung' => 'required',
            'txtKetQua' => 'required|boolean'
        ];
    }


    public function messages () {
        return [
            'txtDetai.required'     => 'Vui lòng chọn đề tài',
            'txtDetai.numeric'      => 'Đề tài không hợp lệ',
            'txtNgayDuyet.required' => 'Vui lòng chọn ngày duyệt',
            'txtNgayDuyet.regex'    => 'Ngày duyệt không đúng định dạng',
            'txtNoidung.required'   => 'Vui lòng nhập nội dung',
            'txtKetQua.required'    => 'Vui lòng chọn kết quả',
            'txtKetQua.boolean'     => 'Kết quả không hợp lệ'
        ];
    }
}
