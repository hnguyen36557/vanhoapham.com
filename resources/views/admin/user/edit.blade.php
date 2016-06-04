@extends('admin.master')
@section('controller','User')
@section('action','Edit')
@section('content')
                    <!-- /.col-lg-12 -->
<h1 class="page-header">Chỉnh sửa thành viên
</h1>
<div class="col-lg-7" style="padding-bottom:120px">
    @include('admin.blocks.error')
    <form action="" method="POST">
    <input type="hidden" name="_token" value="{!! csrf_token() !!}"/>
        <div class="form-group">
            <label>Tên đăng nhập</label>
            <input class="form-control" name="txtUser" value="{!! old('txtUser',isset($data) ? $data['username'] : null) !!}" disabled />
        </div>
        <div class="form-group">
            <label>Mật khẩu</label>
            <input type="password" class="form-control" name="txtPass" placeholder="Vui lòng nhập mật khẩu" />
        </div>
        <div class="form-group">
            <label>Nhập lại mật khẩu</label>
            <input type="password" class="form-control" name="txtRePass" placeholder="Vui lòng nhập lại mật khẩu" />
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email" class="form-control" name="txtEmail" placeholder="Vui lòng nhập email" value="{!! old('txtEmail',isset($data) ? $data['email'] : null) !!}" />
        </div>
        @if (Auth::user()->id != $id)
        <div class="form-group">
            <label>Cấp bậc</label>
            <label class="radio-inline">
                <input name="rdoLevel" value="1"  type="radio"
                    @if($data["level"] == 1) 
                        checked="checked"
                    @endif
                >Người quản trị
            </label>
            <label class="radio-inline">
                <input name="rdoLevel" value="2" type="radio"
                @if($data["level"] == 2) 
                        checked="checked"
                    @endif
                >Thành viên
            </label>
        </div>
        @endif
        <button type="submit" class="btn btn-default">Cập nhật</button>
        <button type="reset" class="btn btn-default">Nhập lại</button>
    <form>
</div>
@endsection