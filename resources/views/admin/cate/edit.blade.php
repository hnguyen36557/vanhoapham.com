@extends('admin.master')
@section('controller','Category')
@section('action','Edit')
@section('content')
<h1 class="page-header">Chỉnh sửa danh mục
</h1>
<div class="col-lg-7" style="padding-bottom:120px">
    @include('admin.blocks.error')
    <form action="" method="POST">
    <input type="hidden" name="_token" value="{!! csrf_token() !!}"/>
    <div class="form-group" >
        <label>Danh mục cha</label>
        <select class="form-control" name="sltParent">
            <option value="0">Please Choose Category</option>
            <?php cate_parent($parent, 0,"--",$data["parent_id"]); ?>
        </select>
    </div>
    <div class="form-group">
        <label>Tên danh mục</label>
        <input class="form-control" name="txtCateName" placeholder="Please Enter Category Name" value="{!! old('txtCateName',isset($data) ? $data["name"] : null) !!}" />
    </div>
    <div class="form-group">
        <label>Số danh mục đặt hàngr</label>
        <input class="form-control" name="txtOrder" placeholder="Please Enter Category Order" value="{!! old('txtOrder',isset($data) ? $data["order"] : null) !!}"/>
    </div>
    <div class="form-group">
        <label>Từ khóa danh mục</label>
        <input class="form-control" name="txtKeywords" placeholder="Please Enter Category Keywords" value="{!! old('txtKeywords',isset($data) ? $data["keywords"] : null) !!}"/>
    </div>
    <div class="form-group">
        <label>Mô tả danh mục</label>
        <textarea class="form-control" rows="3" name="txtDescription">{!! old('txtKeywords',isset($data) ? $data["description"] : null) !!}</textarea>
    </div>
        <button type="submit" class="btn btn-default">Cập nhật</button>
        <button type="reset" class="btn btn-default">Nhập lại</button>
    <form>
</div>
@endsection