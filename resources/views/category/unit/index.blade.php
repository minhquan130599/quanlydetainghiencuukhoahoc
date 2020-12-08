@extends('master.main_admin')
@section('title', 'Danh sách đơn vị')
@section('content-header')
  <section class="content-header">
    <h1>
        Danh sách đơn vị
        <small>Tra cứu</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#">Danh sách đơn vị</a></li>
        <li class="active">Tra cứu đơn vị</li>
    </ol>
  </section>
@endsection

@section('content')
<section class="content">
  <!-- Default box -->
  <div class="box">
    <div class="box-header with-border">
      	<h3 class="box-title">Tra cứu đơn vị</h3>
  		    @include('blocks.toolbox', ['route' => route('admin.unit.index'), 'keyword' => '', 'category' => ['activity' => 'newActivity', 'url' => route('admin.unit.create'), 'title' => 'Danh sách đơn vị']])
    </div><!-- /.box-header -->

    <div class="box-body">
    	<div class="table-responsive">
	       	<table class="table table-bordered table-hover">
	       	<thead>
	       		<tr>
	       			<th>#</th>
	       			<th>Tên đơn vị</th>
	       			<th>Cấp đơn vị</th>
	       			<th>Địa chỉ</th>
	       			<th>Điện thoại</th>
	       			<th>Email</th>
	       			<th>Tác vụ</th>
	       		</tr>
	       	</thead>
	       	<tbody>
	       		@foreach ($data['paginatorContent'] AS $key => $val)
	       			<tr>
	       				<td>{{  $key + 1  }}</td>
	       				<td>{{ $val->stendv }}</td>
	       				<td>{{ $val->stencapdv }}</td>
	       				<td>{{ $val->sdiachi }}</td>
	       				<td>{{ $val->sdienthoai }}</td>
	       				<td>{{ $val->semail }}</td>
	       				<td>
	       					<a href="{{ route('admin.unit.edit', $val->pk_imadv) }}" class="btn btn-default btn-sm" title="Chỉnh sửa thông tin đăng ký"><span class="glyphicon glyphicon-pencil"></span></a>
	       				</td>
	       			</tr>
	       		@endforeach
	       	</tbody>
	       </table>
	   </div><!-- /.table-resposive -->
    </div><!-- /.box-body -->
    @include('blocks.box_footer', ['data' => $data])
  </div>
  <!-- /.box -->
</section><!-- /.content -->
@endsection
