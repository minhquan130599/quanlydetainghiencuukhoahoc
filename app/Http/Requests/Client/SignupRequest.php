<?php

namespace App\Http\Requests\Client;

use App\Http\Requests\Request;

class SignupRequest extends Request
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
            'txtUsername'    => 'required|not_number|min:5',
            'dBirthday'      => 'required|regex:/^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/',
            'txtGender'      => 'required|in:Nam,Nữ,Khác',
            'txtPhoneNumber' => 'required',
            'txtEmail'       => 'required|email',
            'txtNation'      => 'required|alpha_num',
            'txtReligion'    => 'required|alpha_num',
            'txtRank'        => 'required|alpha_num',
            'txtDegree'      => 'required|alpha_num',
            'txtSpecialize'  => 'required|alpha_num',
            'txtUnit'        => 'required|alpha_num',
            'txtUserAccount' => 'required|unique:tbltaikhoan,stendn|min:5|regex:/^[a-zA-Z0-9\-._]+$/',
            'txtPassword'    => 'required',
            'imgAvatar'      => 'image'
        ];
    }

    public function messages()
    {
        return [
            'txtUsername.required'    => 'Vui lòng nhập họ tên',
            'txtUsername.not_number'  => 'Họ tên không được có số',
            'txtUsername.min'  => 'Họ tên quá ngắn',
            'dBirthday.required'      => 'Vui lòng nhập ngày sinh',
            'dBirthday.regex'         => 'Ngày sinh không đúng định dạng',
            'txtGender.required'      => 'Vui lòng chọn giới tính',
            'txtGender.in'            => 'Giới tính phải là "Nam", "Nữ" hoặc "Khác"',
            'txtPhoneNumber.required' => 'Vui lòng nhập số điện thoại liên hệ',
            'txtEmail.required'       => 'Vui lòng nhập email',
            'txtEmail.email'          => 'E-mail không đúng định dạng',
            'txtNation.required'      => 'Vui lòng chọn dân tộc',
            'txtNation.alpha_num'     => 'Dân tộc không hợp lệ',
            'txtReligion.required'    => 'Vui lòng chọn tôn giáo',
            'txtReligion.alpha_num'   => 'Tôn giáo không hợp lệ',
            'txtRank.required'        => 'Vui lòng chọn học hàm',
            'txtRank.alpha_num'       => 'Học hàm không hợp lệ',
            'txtDegree.required'      => 'Vui lòng chọn học vị',
            'txtDegree.alpha_num'     => 'Học vị không hợp lệ',
            'txtUnit.required'      => 'Vui lòng chọn đơn vị',
            'txtUnit.alpha_num'     => 'Đơn vị không hợp lệ',
            'txtSpecialize.required'  => 'Vui lòng chọn chuyên ngành/lĩnh vực',
            'txtSpecialize.alpha_num' => 'Chuyên ngành/lĩnh vực không hợp lệ',
            'txtUserAccount.required' => 'Vui lòng nhập tên đăng nhập',
            'txtUserAccount.unique'   => 'Tên đăng nhập đã tồn tại',
            'txtUserAccount.regex'    => 'Tài khoản không hợp lệ',
            'txtUserAccount.min' => 'Tên tài khoản quá ngắn',
            'txtPassword.required'    => 'Vui lòng nhập mật khẩu',
            'imgAvatar.image' => 'Ảnh đại diện không đúng định dạng'
        ];
    }
}
