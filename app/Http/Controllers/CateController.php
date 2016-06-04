<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Http\Requests\CateRequest;
use App\Cate;
class CateController extends Controller {

	public function getList() {
		$data = Cate::select('id','name','parent_id')->orderBy('id','DESC')->get()->toArray();
		return view('admin.cate.list',compact('data'));
	}
	public function getAdd() {
		$parent = Cate::select('id','name','parent_id')->get()->toArray();
		return view('admin.cate.add',compact('parent'));
	}
	public function postAdd(CateRequest $request) {
		$cate = new Cate;
		$cate->name = $request->txtCateName;
		$cate->alias = changeTitle($request->txtCateName); /*changeTitle trong Thuvien/function*/
		$cate->order = $request->txtOrder;
		$cate->parent_id = $request->sltParent;
		$cate->keywords = $request->txtKeywords;
		$cate->description = $request->txtDescription;
		$cate->save();
		return redirect()->route('admin.cate.list')->with(['flash_level' => 'success','flash_message' => 'Thành công!! Thêm danh mục thành công']);
	}

	public function getDelete($id) {
		$parent = Cate::where('parent_id',$id)->count();
		if($parent == 0){
			$cate = Cate::find($id);
			$cate->delete($id);
			return redirect()->route('admin.cate.list')->with(['flash_level' => 'success','flash_message' => 'Xóa thành công']);
		}else {
			echo"<script type='text/javascript'>
				window.alert('Xin Lỗi! Không Thể Xóa');
				window.location = '";
					echo route('admin.cate.list');
				echo"'
			</script>";
		}
		
	}
	public function getEdit($id) {
		$data = Cate::findOrFail($id)->toArray();
		$parent = Cate::select('id','name','parent_id')->get()->toArray();
		return view('admin.cate.edit',compact('parent','data','id'));
	}
	public function postEdit(Request $request,$id) {
		$this->validate($request,
		  	["txtCateName" => "required"],
		  	["txtCateName.required" => "Vui lòng nhập tên danh mục"]
		);

		// update dữ liệu
		$cate = Cate::find($id);
		$cate->name = $request->txtCateName;
		$cate->alias = changeTitle($request->txtCateName); /*changeTitle trong Thuvien/function*/
		$cate->order = $request->txtOrder;
		$cate->parent_id = $request->sltParent;
		$cate->keywords = $request->txtKeywords;
		$cate->description = $request->txtDescription;
		$cate->save();
		return redirect()->route('admin.cate.list')->with(['flash_level' => 'success','flash_message' => 'Thành công!! Chỉnh sửa danh mục thành công']);
	}

}
