@extends('admin.master')
@section('controller','Product')
@section('action','List')
@section('content')
                    <!-- /.col-lg-12 -->
<h1 class="page-header">Danh sách sản phẩm
    </h1>
<table class="table table-striped table-bordered table-hover" id="dataTables-example">
    <thead>
        <tr align="center">
            <th>ID</th>
            <th>Tên</th>
            <th>Giá</th>
            <th>Danh mục</th>
            <th>Ngày </th>
            <th>Xóa</th>
            <th>Chỉnh sửa</th>
        </tr>
    </thead>
    <tbody>
        <?php $stt = 0 ?>
        @foreach ($data as $item)
        <?php $stt = $stt+1 ?>
        <tr class="odd gradeX" align="center">
            <td>{!! $stt !!}</td>
            <td>{!! $item["name"] !!}</td>
            <td>{!! number_format($item["price"],0,",",".") !!} VNĐ</td>
            <td>
                <?php $cate = DB::table('cates')->where('id',$item["cate_id"])->first(); ?>
                    @if(!empty($cate->name))
                        {!! $cate->name !!}
                    @endif
            </td>
            <td>
                <?php
                    echo \Carbon\Carbon::createFromTimeStamp(strtotime($item["created_at"]))->diffForHumans();//thư viện carbon tạo ra thời gian hiện tại
                ?>
            </td>
             <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="{!! URL::route('admin.product.getDelete',$item['id']) !!}" onclick="return xacnhanxoa('Bạn Có Muốn Xóa Sản Phẩm Này không')"> Delete</a></td>
            <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="{!! URL::route('admin.product.getEdit',$item['id']) !!}">Edit</a></td>
        </tr>
    @endforeach
    </tbody>
</table>
@endsection
