@extends('admin.master')
@section('controller','User')
@section('action','Add')
@section('content')
                    <!-- /.col-lg-12 -->
<h1 class="page-header">Thêm thành viên
</h1>
<div class="col-lg-7" style="padding-bottom:120px">
    @include('admin.blocks.error')
    <form action="" method="POST">
        <input type="hidden" name="_token" value="{!! csrf_token() !!}"/>
        <div class="form-group">
            <label>Tên đăng nhập</label>
            <input class="form-control" name="txtUser" placeholder="Vui lòng nhập tên đăng nhập" value="{!! old('txtUser') !!}" />
        </div>
        <div class="form-group">
            <label>Mật khẩu</label>
            <input type="password" class="form-control" name="txtPass" placeholder="Vui lòng nhập mật khẩu" value="{!! old('txtPass') !!}"  />
        </div>
        <div class="form-group">
            <label>Nhập lại Mật khẩu</label>
            <input type="password" class="form-control" name="txtRePass" placeholder="Vui lòng nhập lại mật khẩu"  value="{!! old('txtRePass') !!}" />
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email" class="form-control" name="txtEmail" placeholder="Vui lòng nhập email"  value="{!! old('txtEmail') !!}" />
        </div>
        <div class="form-group">
            <label>Cấp bậc</label>
            <label class="radio-inline">
            <input name="rdoLevel" value="1" checked="" type="radio">Người quản trị
            </label>
            <label class="radio-inline">
            <input name="rdoLevel" value="2" type="radio">Thành viên
            </label>
        </div>
        <button type="submit" class="btn btn-default">Thêm thành viên</button>
        <button type="reset" class="btn btn-default">Nhập lại</button>
    <form>
</div>
@endsection