<?php

namespace App\Http\Requests\Plan;

use App\Http\Requests\Request;
use Route;
class ExpertiseRequest extends Request
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
        $validation = [
            'mahoidong' => 'required|unique:tblhoidong,smahoidong,' . Request::segment(4) . ',pk_imahd',
            'tenhoidong' => 'required',
            'quyetdinh' => 'required',
            'ngaythanhlap' => 'required|regex:/^([0-9]{2}+\/+([0-9]{2}+\/+([0-9]{4})))$/',
            'ngaylamviec' => 'required|regex:/^([0-9]{2}+\/+([0-9]{2}+\/+([0-9]{4})))$/'
        ];

        $arrayRoute = array(
            'admin.expertise.store', 'admin.survey.store', 'admin.acceptance.store'
        );
        if (in_array(Route::currentRouteName(), $arrayRoute))
        {
            $validation['choose'] = 'required';
        }

        return $validation;
    }


    /**
     * Document
     * @link
     * @param
     * @return void
     * @author asus <nguyenthimyhoa@gmail.com>
     **/
    public function messages()
    {
        return [
            'mahoidong.required'    => 'Vui lòng nhập mã số hội đồng',
            'mahoidong.unique'      => 'Mã hội đồng đã tồn tài',
            'tenhoidong.required'   => 'Vui lòng nhập tên hội đồng',
            'quyetdinh.required'    => 'Vui lòng nhập quyết định',
            'ngaythanhlap.required' => 'Vui lòng nhập ngày thành lập',
            'ngaythanhlap.regex'     => 'Ngày thành lập không đúng định dạng',
            'ngaylamviec.required'  => 'Vui lòng nhập ngày làm việc',
            'ngaylamviec.regex'     => 'Ngày làm việc không đúng định dạng',
            'choose.required' => 'Vui lòng chọn đề tài NCKH'
        ];
    } // End action messages
}
