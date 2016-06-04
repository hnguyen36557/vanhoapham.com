@extends('admin.master')
@section('controller','Product')
@section('action','Edit')
@section('content')
<style>
    .img_current {
        width: 150px;
        height: auto;
    }
    .img_detail {
        width: 200;
        margin-bottom: 20px;
    }
    .icon_del {
        position: relative;
        top: -46px;
        left: 20px;
    }
    #insert {
        margin-top: 20px;
    }
</style>
    <!-- /.col-lg-12 -->
<h1 class="page-header">Chỉnh sửa sản phẩm
</h1>
<form action="" method="POST" name="frmEditproduct" enctype="multipart/form-data">
    <div class="col-lg-7" style="padding-bottom:120px">
    @include('admin.blocks.error')
        <input type="hidden" name="_token" value="{!! csrf_token() !!}"/>
        <div class="form-group">
            <label>Danh mục cha</label>
            <select class="form-control" name="sltParent">
                <option value="">Chọn danh mục sản phẩm</option>
                <?php cate_parent($cate,0,"--",$product["cate_id"]) ?><!-- phân cấp Category bằng đệ quy-->
            </select>
        </div>
        <div class="form-group">
            <label>Tên</label>
            <input class="form-control" name="txtName" placeholder=""  value="{!! old('txtName',isset($product) ? $product['name'] : null) !!}" />
        </div>
        <div class="form-group">
            <label>Giá</label>
            <input class="form-control" name="txtPrice" placeholder=""  value="{!! old('Price',isset($product) ? $product['price'] : null) !!}"/>
        </div>
        <div class="form-group">
            <label>Giới thiệu</label>
            <textarea class="form-control" rows="3" name="txtIntro" >{!! old('txtIntro',isset($product) ? $product['intro'] : null) !!}</textarea>
            <script type="text/javascript">ckeditor ("txtIntro")</script>
        </div>
        <div class="form-group">
            <label>Nội dung</label>
            <textarea class="form-control" rows="3" name="txtContent" >{!! old('txtContent',isset($product) ? $product['content'] : null) !!}</textarea>
            <script type="text/javascript">ckeditor ("txtContent")</script>
        </div>
        <div class="form-group">
            <label>Hình ảnh hiện tại</label>
            <img src="{!! asset('public/upload/image/'.$product['image']) !!}" class="img_current">
            <input type="hidden" name="img_current" value="{!!$product['image']!!}">
        </div>
        <div class="form-group">
            <label>Hình ảnh</label>
            <input type="file" name="fImages">
        </div>
        <div class="form-group">
            <label>Từ khóa sản phẩm</label>
            <input class="form-control" name="txtKeywords" placeholder="" value="{!! old('txtKeywords',isset($product) ? $product['keywords'] : null) !!}"/>
        </div>
        <div class="form-group">
            <label>Mô tả sản phẩm</label>
            <textarea class="form-control" rows="3" name="txtDescription">{!! old('txtDescription',isset($product) ? $product['description'] : null) !!}</textarea>
        </div>
        <button type="submit" class="btn btn-default">Cập nhật</button>
        <button type="reset" class="btn btn-default">Nhập lại</button>
    </div>
    <div class="col-md-1"></div>
    <div class="col-md-4"><!-- thêm hình phụ --> 
        @foreach($product_image as $key => $item)
        <div class="form-group" id="{!! $key !!}">
            <img src="{!! asset('public/upload/detail/'.$item['image']) !!}" class="img_detail" idHinh="{!! $item['id'] !!}" id="{!! $key !!}">
            <a href="javascript:void(0)" type="button" id="del_img_demo" class="btn btn-danger btn-circle icon_del"><i class="fa fa-times"></i></a>          
        </div>
        @endforeach
        <button type="button" class="btn btn-primary" id="addImages">Thêm hình ảnh</button>
        <div id="insert"></div>
    </div>
<form>
@endsection