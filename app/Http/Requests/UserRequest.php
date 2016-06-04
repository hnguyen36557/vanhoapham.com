<?php namespace App\Http\Requests;

use App\Http\Requests\Request;

class UserRequest extends Request {

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
			'txtUser'   => 'required|unique:users,username',
			'txtPass'   => 'required',
			'txtRePass' => 'required|same:txtPass',
			'txtEmail'  => 'required'//|regex:/^[a-z][a-z0-9]*(_[a-z0-9]+)*(\.[a-z0-9]+)*@[a-z0-9]([a-z0-9-][a-z0-9]+)*(\.[a-z]{2,4}Ư){1,2}Ư$/''
		];
	}

	public function message() {
		return [
			'txtUser.required'   => 'Vui Lòng Nhập Tên Đăng Nhập',
			'txtUser.unique'     => 'Thành Viên Đã Tồn Tại ',
			'txtPass.required'   => 'Vui Lòng Nhập Mật Khẩu',
			'txtRePass.required' => 'Vui Lòng Nhập Lại Mật Khẩu',
			'txtRePass.same'     => 'Mật Khẩu Không Trùng',
			'txtEmail.required'  => 'Vui Lòng Nhập Email',
			//'txtEmail.regex'     => 'Lỗi Email'
		];
	}

}
