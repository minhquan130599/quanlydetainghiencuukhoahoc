<?php

namespace App\Http\Requests\Deploy;

use App\Http\Requests\Request;

class AcceptanceRequest extends Request
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
            'txtDetai'      => 'required',
            'txtSoQDNTCS'   => 'required',
            'txtDiemNTCS'   => 'required|numeric',
            'txtNgayNTCS'   => 'required|regex:/^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/',
            'txtSoQDNTCT'   => 'required',
            'txtNgayQDNTCT' => 'required|regex:/^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/',
            'txtNgayNTCT'   => 'required|regex:/^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/',
            'txtDiemTBNTCT' => 'required|numeric',
            'txtXeploai'    => 'required'
        ];
    }


    public function messages()
    {
        return [
            'txtDetai.required'      => 'Bạn chưa chọn đề tài',
            'txtSoQDNTCS.required'   => 'Bạn chưa nhập số quyết định nghiệm thu cơ sở',
            'txtDiemNTCS.required'   => 'Bạn chưa nhập điểm nghiệm thu cơ sở',
            'txtDiemNTCS.numeric'    => 'Điểm nghiệm thu cơ sở phải là kiểu số',
            'txtNgayNTCS.required'   => 'Bạn chưa chọn ngày nghiệm thu cơ sở',
            'txtNgayNTCS.regex'      => 'Ngày nghiệm thu cơ sở chưa đúng định dạng',
            'txtSoQDNTCT.required'   => 'Bạn chưa nhập số quyết định nghiệm thu chính thức',
            'txtNgayQDNTCT.required' => 'Bạn chưa chọn ngày quyết định nghiệm thu chương trình',
            'txtNgayQDNTCT.regex'    => 'Ngày quyết định nghiệm thu chương trình chưa đúng định dạng',
            'txtNgayNTCT.required'   => 'Bạn chưa chọn ngày nghiệm thu chương trình',
            'txtNgayNTCT.regex'      => 'Ngày nghiệm thu chương trình chưa đúng định dạng',
            'txtDiemTBNTCT.required' => 'Bạn chưa nhập điểm thông báo nghiệm thu chương trình',
            'txtDiemTBNTCT.numeric'  => 'Điểm thông báo nghiệm thu chương trình phải là kiểu số',
            'txtXeploai.required'    => 'Bạn chưa chọn kết quả nghiệm thu chương trình'
        ];
    }
}
