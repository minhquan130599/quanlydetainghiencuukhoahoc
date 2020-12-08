@extends('master.main_admin')
@section('title', 'Cập nhật chứng nhận đề tài')
@section('content-header')
    <section class="content-header">
        <h1>
	        Chứng nhận đề tài
   	 	</h1>
	    <ol class="breadcrumb">
	        <li><a href="#">Chứng nhận</a></li>
	        <li class="active">Cập nhật</li>
	    </ol>
    </section>
@endsection <!-- /.content-header -->

@section('content')
	<section class="content">
    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Cập nhật chứng nhận đề tài</h3>
           		@include('blocks.toolbox', [
				'route'    => route('admin.certify.index'),
				'keyword'  => $data['keyword'],
				'category' => [
					'activity' => 'certify._form',
					'url'      => '',
					'title'    => 'Cập nhật thông tin chứng nhận',
					'data'     => $data
       			]
           	])
        </div><!-- /.box-header -->

		<div class="box-body">
			@if (count($data['paginatorContent']))
				<table class="table table-hover table-bordered">
					<thead>
						<tr class="active">
							<th class="text-center">#</th>
							<th class="text-center">Đề tài khoa học</th>
							<th class="text-center">Chủ nhiệm</th>
							<th class="text-center">Ngày lập chứng nhận</th>
							<th class="text-center">Người ký</th>
							<th class="text-center">Quyển thư viện</th>
							<th class="text-center">Download bản mềm</th>
							<th class="text-center">Ghi chú</th>
							<th class="text-center">Tác vụ</th>
						</tr>
					</thead>
					<tbody>
						@foreach ($data['paginatorContent'] AS $key => $topic)
						<tr class="{{ $topic->bsendmail == 1 ? 'success' : null }}">
							<td class="text-center">{{ numeric_order($data['page'], $key, 15) }}</td>
							<td>{{ $topic->stendt }}</td>
							<td>{{ $topic->shocvan }}</td>
							<td class="text-center">{!! !empty($topic->dngaycapgiaycn) ? $topic->dngaycapgiaycn : '<span data-toggle="tooltip" title="Không yêu cầu chứng nhận" class="glyphicon glyphicon-eye-close"></span>' !!}</td>
							<td class="text-center">{!! !empty($topic->snguoikycn) ? $topic->snguoikycn : '<span data-toggle="tooltip" title="Không yêu cầu chứng nhận" class="glyphicon glyphicon-eye-close"></span>' !!}</td>
							<td>{{ $topic->bquyenbaocao == 1 ? 'Đã nộp' : 'Chưa nộp'}}</td>
							<td><a href="{{ $topic->filebanmem }}">Download</a></td>
							<td>{{ $topic->sghichu }}</td>
							<td width="12%">
								<div class="btn-group" role="group">
									<a class="btn btn-default btn-sm" data-toggle="modal" href="#modalEdit{{$key}}"><span class="glyphicon glyphicon-pencil"></span></a>
							  		@include('certify._formEdit', [
							  			'key' => $key,
							  			'data' => $data
							  		])

							  		<a class="btn btn-default btn-sm" data-toggle="modal" href="#showModal{{$key}}"><span class="glyphicon glyphicon-envelope"></span></a>
							  		@include('certify._modal', [
							  			'key' => $key,
							  			'data' => $data
							  		])
							  		<form action="{{ route('admin.certify.destroy', $topic->pk_imadt) }}" method="POST" style="display: inline;">
							  			<button type="submit" class="btn btn-default btn-sm" onclick="return confirm('Hủy chứng nhận của đề tài này?')"><span class="glyphicon glyphicon-trash"></span></button>
							  		</form>
								</div>
							</td>
						</tr>
						@endforeach
					</tbody>
				</table><br />
				<div class="pull-right">
	                <button type="button" class="btn btn-success" style="height: 24px; background-color: #d0e9c6;"></button> : Đã email thông báo
	            </div>
	        @else
	        	Không có dữ liệu.
            @endif
		</div><!--  /.box-body -->
		@include('blocks.box_footer', ['data' => $data])
	</div><!-- /.box -->
@endsection <!-- /.content -->

@section('script')
    <script src="/plugins/input-mask/jquery.inputmask.js" type="text/javascript"></script>
    <script src="/plugins/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
    <script src="/plugins/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
    <script src="/app/js/certify.js" type="text/javascript"></script>
@endsection