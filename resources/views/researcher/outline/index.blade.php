@extends('master.main_admin')
@section('title', 'Cập nhật thông tin đề cương đề tài')
@section('content-header')
  <section class="content-header">
    <h1>
        Cập nhật thông tin đề cương đề tài
        <small>Tra cứu</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#">Cập nhật thông tin đề cương đề tài</a></li>
        <li class="active">Tra cứu đơn vị</li>
    </ol>
  </section>
@endsection

@section('content')
<style type="text/css" media="screen">
	#datatables_filter{
		float: right;
	}
	#datatables_paginate{
		float: right;
	}
</style>
<section class="content">
  <!-- Default box -->
  <div class="box">
    <div class="box-header with-border">
      	<h3 class="box-title">Tra cứu đề tài</h3>
  		    {{-- @include('blocks.toolbox', ['route' => route('admin.unit.index'), 'keyword' => '', 'category' => ['activity' => 'newActivity', 'url' => route('admin.unit.create'), 'title' => 'Danh sách đơn vị']]) --}}
    </div><!-- /.box-header -->

    <div class="box-body">
    	<div class="table-responsives">
	       	<table class="table table-bordered table-hover" id="datatables">
	       	<thead>
	       		<tr>
	       			<th>#</th>
	       			<th>Đề tài khoa học</th>
	       			<th>Mục tiêu</th>
	       			<th>Sản phẩm</th>
	       			<th>Địa chỉ ứng dụng</th>
	       			<!-- <th>Chủ nhiệm</th> -->
	       			<th width="8%">Tác vụ</th>
	       		</tr>
	       	</thead>
	       	<tbody>
	       		@foreach ($data['paginatorContent'] AS $key => $val)
	       			<tr>
	       				<td>{{  $key + 1  }}</td>
	       				<td>{{ $val->stendt }}</td>
	       				<td width="20%">
	       				{!! str_limit($val->smuctieu, 40) !!}
	       				<a class="btn-sm pull-right" href="#target{{$key}}" data-toggle="modal">Mục tiêu</a>
	       				</td>
	       				@include('researcher.outline._modal', ['title' => $val->stendt, 'target' => $val->smuctieu, 'id' => sprintf('target%s', $key)])
	       				<td width="20%">
	       				{!! str_limit($val->ssanpham, 40) !!}
	       				<a class="btn-sm pull-right" href="#product{{$key}}" data-toggle="modal">Sản phẩm</a>
	       				</td>
	       				@include('researcher.outline._modal', ['title' => $val->stendt, 'target' => $val->ssanpham, 'id' => sprintf('product%s', $key)])
	       				<td width="20%">
	       				{!! str_limit($val->snoidungdaicuong, 40) !!}
	       				<a class="btn-sm pull-right" href="#content{{$key}}" data-toggle="modal">Nội dung</a>
	       				</td>
	       				@include('researcher.outline._modal', ['title' => $val->stendt, 'target' => $val->snoidungdaicuong, 'id' => sprintf('content%s', $key)])

	       				<!-- <td>{{ $val->shodem }}</td> -->
	       				<td>
	       					<a href="{{ route('researcher.outline.edit',$val->pk_imadt ) }}" class="btn btn-default btn-sm" title="Chỉnh sửa thông tin đăng ký"><span class="glyphicon glyphicon-pencil"></span></a>
                            <a href="{{ route('admin.form.phieudangky', $val->pk_imadt) }}" class="btn btn-default btn-sm" title="In phiếu đăng ký đề tài" target="_blank"><span class="glyphicon glyphicon-print"></span></a></li>
	       				</td>
	       			</tr>
	       		@endforeach
	       	</tbody>
	       </table>
	   </div><!-- /.table-resposive -->
    </div><!-- /.box-body -->
    {{-- @include('blocks.box_footer', ['data' => $data]) --}}
  </div>
  <!-- /.box -->
</section><!-- /.content -->
@endsection
@section('script')
<script type="text/javascript">
    $(function () {
        $("#datatables").DataTable({
            "aLengthMenu": [[10, 15, 25,50, -1], [10, 15, 25,50, "Tất cả"]],
            "iDisplayLength": 10,
            "language": {
                "lengthMenu": "Hiển thị _MENU_ dòng mỗi trang",
                "zeroRecords": "Không tìm thấy",
                "info": "Trang _PAGE_/_PAGES_",
                "infoEmpty": "Không có dữ liệu",
                "infoFiltered": "(lọc trong tổng số _MAX_)",
                "sSearch":       "Tìm nhanh: ",
                "oPaginate": {
                    "sFirst":    "Ðầuu",
                    "sPrevious": "Trước",
                    "sNext":     "Tiếp",
                    "sLast":     "Cuối"
                }
            }
        });
    });
</script>
@endsection