@extends('master.main_admin')
@section('title', 'Tra cứu hồ sơ cán bộ')
@section('content-header')
  <section class="content-header">
    <h1>
        Hồ sơ cán bộ
        <small>Tra cứu</small>
    </h1>
    <ol class="breadcrumb">
        <li>Quản lý hồ sơ cán bộ</li>
        <li class="active">Tra cứu hồ sơ cán bộ</li>
    </ol>
  </section>
@endsection

@section('content')
<section class="content">
  <!-- Default box -->
  <div class="box">
    <div class="box-header with-border">
      	<h3 class="box-title">Tra cứu hồ sơ cán bộ</h3>
	    <div class="box-tools">
	    	<a href="{{ route('admin.staff.create') }}" class="btn btn-primary btn-sm" title="Quay về trang cập nhật thông tin cán bộ"><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> Thêm cán bộ</a>
	    </div><!--  /.box-tools -->
    </div><!-- /.box-header -->

    <div class="box-body">
    	@include('staff.search', ['search_data' => $search_data])
    	<div class="table-responsive">
    		@if (count ($data['paginatorContent']))
	       	<table class="table table-bordered table-hover">
		       	<thead>
		       		<tr class="active">
		       			<th class="text-center">#</th>
		       			<th class="text-center">Họ tên <br>cán bộ</th>
		       			<th class="text-center">Ngày sinh</th>
		       			<th class="text-center">Giới tính</th>
		       			<th class="text-center">Điện thoại</th>
		       			<th class="text-center">E-mail</th>
		       			<th class="text-center">Chuyên môn</th>
		       			<th class="text-center">Nhóm cán bộ</th>
		       			<th class="text-center">Đơn vị công tác</th>
		       			<th class="text-center" width="8%">Tác vụ</th>
		       		</tr>
		       	</thead>
		       	<tbody>
		       		@foreach ($data['paginatorContent'] AS $key => $val)
		       		<tr>
		       			<td class="text-center">
		       				<!-- {{ numeric_order($data['page'], $key, 15) }} -->
                            <img src="{{ $val->sanh }}" class="img-responsive" style="max-width: 45px;" />
		       			</td>
		       			<td>{{ $val->shodem }}</td>
		       			<td class="text-center">{{ $val->sngaysinh }}</td>
		       			<td class="text-center">{{ $val->sgioitinh }}</td>
		       			<td class="text-center">{{ $val->sdienthoai }}</td>
		       			<td>{{ $val->semail }}</td>
		       			<td class="text-center">{{ $val->stencn }}</td>
		       			<td>{{ $val->stennhomcb }}</td>
		       			<td>{{ $val->stendv }}</td>
		       			<td class="text-center">
		       				<div class="btn-group" role="group">
							  <a href="{{ route('admin.staff.edit', $val->pk_smacanbo) }}" class="btn btn-default btn-sm" title="Cập nhật hồ sơ cán bộ"><span class="glyphicon glyphicon-pencil"></span></a>
							  <a href="{{ route('admin.staff.detail', $val->pk_smacanbo) }}" class="btn btn-default btn-sm" title="Xem hồ sơ cán bộ"
                              ><span class="glyphicon glyphicon-eye-open"></span></a>
							</div>
		       			</td>
		       		</tr>
		       		@endforeach
		       	</tbody>
	       	</table>
	       	@else
	       		Không có dữ liệu
	      	@endif
	   </div><!-- /.table-resposive -->
    </div><!-- /.box-body -->

    @include('blocks.box_footerv2', ['data' => $data, 'search_data' => $search_data])
  </div>
  <!-- /.box -->
</section><!-- /.content -->
@endsection



@section('script')
	<script type="text/javascript" src="/app/js/staff.js"></script>
@endsection