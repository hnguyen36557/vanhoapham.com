@extends('admin.master')
@section('controller','Category')
@section('action','Add')
@section('content')
<div class="col-lg-7" style="padding-bottom:120px">
    @include('admin.blocks.error')
    <h1 class="page-header">Thêm Danh Mục
        
    </h1>
    <form action="{!!route('admin.cate.getAdd')!!}" method="POST">
        <input type="hidden" name="_token" value="{!! csrf_token() !!}"/>
        <div class="form-group">
            <label>Danh mục cha</label>
            <select class="form-control" name="sltParent">
                <option value="0">Vui lòng chọn danh mục</option>
                <?php cate_parent($parent); ?><!-- phân cấp Category bằng đệ quy-->
            </select>
        </div>
        <div class="form-group">
            <label>Tên danh mục</label>
            <input class="form-control" name="txtCateName" placeholder="Vui lòng nhập tên danh mục" />
        </div>
        <div class="form-group">
            <label>Số danh mục đặt hàng</label>
            <input class="form-control" name="txtOrder" placeholder="Vui lòng nhập số danh mục đặt hàng" />
        </div>
        <div class="form-group">
            <label>Từ khóa danh mục</label>
            <input class="form-control" name="txtKeywords" placeholder="Vui lòng nhập từ khóa danh mục" />
        </div>
        <div class="form-group">
            <label>Mô tả danh mục </label>
            <textarea class="form-control" rows="3" name="txtDescription"></textarea>
        </div>
            <button type="submit" class="btn btn-default">Thêm danh mục</button>
            <button type="reset" class="btn btn-default">Nhập lại</button>
    <form>
</div>
@endsection