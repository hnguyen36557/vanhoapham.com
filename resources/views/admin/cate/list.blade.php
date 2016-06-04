@extends('admin.master')
@section('controller','Category')
@section('action','List')
@section('content')
    <h1 class="page-header">Danh sách danh mục
    </h1>
    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
        <thead>
            <tr align="center">
                <th>ID</th>
                <th>Tên</th>
                <th>Danh mục cha</th>
                <th>Xóa</th>
                <th>Chỉnh sửa</th>
            </tr>
        </thead>
        <tbody>
        <?php $stt = 0?>
            @foreach ($data as $item)
            <?php $stt = $stt+1?>
            <tr class="odd gradeX" align="center">
                <td>{!! $stt !!}</td>
                <td>{!! $item["name"] !!}</td>
                <td>
                    @if ($item["parent_id"] == 0)
                        {!! "Chưa có" !!}
                    @else
                        <?php
                            $parent = DB::table('cates')->where('id',$item["parent_id"])->first();
                            //if ($parent!=null) {
                                echo $parent->name;
                            //}
                            
                        ?>
                    @endif
                </td>
                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a onclick="return xacnhanxoa('chắc không')" href="{!! URL::route('admin.cate.getDelete', $item['id']) !!}"> Xóa</a></td>
                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="{!! URL::route('admin.cate.getEdit', $item['id']) !!}">Chỉnh Sửa</a></td>
            </tr>
            @endforeach
        </tbody>
    </table>
               
@endsection