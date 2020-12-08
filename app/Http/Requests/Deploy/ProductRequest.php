<?php

namespace App\Http\Requests\Deploy;

use App\Http\Requests\Request;

class ProductRequest extends Request
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
            'pk_imalsp' => 'required',
            'pk_imadt' => 'required',
            'stensp' => 'required',
            'sthoigiancongbo' => 'required',
            'snoicongbo' => 'required',
            'stomtat' => 'required'
        ];
    }

    public function messages()
    {
        return [
             'pk_imalsp.required' => 'Vui lòng chọn loại sản phẩm',
            'pk_imadt.required' => 'Vui lòng chọn đề tài khoa học',
            'stensp.required' => 'Vui lòng nhập tên sản phẩm',
            'sthoigiancongbo.required' => 'Vui lòng chọn thời gian công bố',
            'snoicongbo.required' => 'Vui lòng nhập nơi công bố',
            'stomtat.required' => 'Vui lòng nhập tóm tắt'
        ];
    }
}
