@extends('admin.master')
@section('controller','User')
@section('action','List')
@section('content')
                    <!-- /.col-lg-12 -->
<h1 class="page-header">Danh sách thành viên
</h1>
<table class="table table-striped table-bordered table-hover" id="dataTables-example">
    <thead>
        <tr align="center">
            <th>ID</th>
            <th>Tên đăng nhập</th>
            <th>Cấp bậc</th>
            <th>Xóa</th>
            <th>Chỉnh sửa</th>
        </tr>
    </thead>
    <tbody>
    <?php $stt = 0 ?>
    @foreach ($user as $item_user)
    <?php $stt = $stt +1 ?>
        <tr class="odd gradeX" align="center">
            <td>{!! $stt !!}</td>
            <td>{!! $item_user['username'] !!}</td>
            <td>
            @if ($item_user['id'] == 2)
                Superadmin
            @elseif($item_user['level'] == 1)
                Admin
            @else
                member
            @endif
            </td>
            <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="{!! URL::route('admin.user.getDelete', $item_user['id']) !!}" onclick="return xacnhanxoa('Bạn Có Muốn Xóa Thành Viên Này không')"> Xóa</a></td>
            <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="{!! URL::route('admin.user.getEdit', $item_user['id']) !!}">Chỉnh sửa</a></td>
        </tr>
    @endforeach
    </tbody>
</table>
@endsection