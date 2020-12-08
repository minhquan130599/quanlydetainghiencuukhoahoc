<?php

namespace App\Http\Requests\Client;

use App\Http\Requests\Request;

class LoginRequest extends Request
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
            'txtUserAccount' => 'required',
            'txtPassword' => ''
        ];
    }


    public function messages()
    {
        return [
            'txtUserAccount.required' => 'Vui lòng nhập tài khoản hệ thống',
            'txtPassword.required' => 'Vui lòng nhập mật khẩu tài khoản'
        ];
    }
}
