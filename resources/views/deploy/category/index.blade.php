@extends('master.main_admin')
@section('title', 'Triển khai danh mục')
@section('content-header')
  <section class="content-header">
    <h1>
        Triển khai danh mục
        <small>Tra cứu</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#">Triển khai</a></li>
        <li class="active">Triển khai danh mục</li>
    </ol>
  </section>
@endsection

@section('content')
<section class="content">
  <!-- Default box -->
  <div class="box">
    <div class="box-header with-border">
      	<h3 class="box-title">Triển khai danh mục</h3>
	    @include('blocks.toolbox', ['route' => route('deploy.category.index'), 'keyword' => $data['keyword'], 'category' => ['activity' => 'newActivity', 'url' => route('deploy.category.index'), 'title' => 'Danh mục các đề tài triển khai']])
    </div><!-- /.box-header -->

    <div class="box-body">
    	<div class="table-responsive">
	       	<table class="table table-bordered table-hover">
	       	<thead>
	       		<tr class="active">
	       			<th>#</th>
	       			<th width="45%">Đề tài khoa học</th>
	       			<th>Chủ nhiệm</th>
	       			<th>Đơn vị phối hợp</th>
	       			<th width="14%" class="text-center">Thời gian <br>thực hiện</th>
	       			<th>Tác vụ</th>
	       		</tr>
	       	</thead>
	       	<tbody>
	       		@foreach ($data['paginatorContent'] AS $key => $val)
	       		<tr>
	       			<td>{{ numeric_order($data['page'], $key, 15) }}</td>
	       			<td>{{ $val->stendt }} (MS: <b>{!! $val->smasodetai !!}</b>)</td>
	       			<td>{{ $val->shocvan }}</td>
	       			<td>{{ $val->stendv }}</td>
	       			<td>{{ substr(date('d/m/Y', $val->dngaybd), 3) }} - {{ substr(date('d/m/Y', $val->dngaykt), 3) }}</td>
	       			<td>
	       				<div class="btn-group" role="group">
						  <a href="{{ route('deploy.category.show', $val->pk_imadt) }}" class="btn btn-success btn-sm" title="Chi tiết đề tài">Chi tiết</a>
						</div>
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


@section('script')
	<script type="text/javascript">
		$(document).ready(function() {
			$('form').find('.input-group-btn').find('a:last').remove()
		});
	</script>
@endsection