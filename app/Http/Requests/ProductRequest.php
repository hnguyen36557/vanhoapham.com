<?php namespace App\Http\Requests;

use App\Http\Requests\Request;

class ProductRequest extends Request {

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
			'sltParent'=> 'required',
			'txtName'  => 'required|unique:products,name', 
			'fImages'   => 'required'
		];
	}
	public function messages() {
		return[
			'sltParent.required' => "Vui Lòng Chọn Danh Mục",
			'txtName.required'   => "Vui Lòng Nhập Tên Sản Phẩm",
			'txtName.unique'     => "Đã Tồn Tại Tên Sản Phẩm",
			'fImages.required'    => "Vui Lòng Chọn Hình",
			'fImages.image'       => "Phải Là File Hình",
		];
	}

}
