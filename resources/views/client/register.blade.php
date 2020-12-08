@extends('master.main')
@section('title', 'Đăng ký tài khoản cán bộ Nghiên cứu khoa học')

@section('content')
<body class="hold-transition skin-purple-light sidebar-mini">
	<br /><br />
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<legend>Đăng ký thông tin hồ sơ cán bộ Nghiên cứu khoa học</legend>

				@include('blocks.errors', ['errors' => $errors])

				@if ( ! empty (Session::get('flash_message')) )
					<div class="alert alert-{!! Session::get('flash_level') !!}">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						{!! Session::get('flash_message') !!}
					</div>
				@endif

				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">
							Nếu đã có tài khoản đăng nhập, vui lòng bấm <a title="Bấm vào đây để đăng nhập" href="{{ route('default') }}">
							<strong style="color: #ff8d3d;">vào đây</strong></a> để đăng nhập
						</h3>
					</div>

					<form action="{{ route('client.store') }}" method="POST" class="form-horizontal" autocomplete="off" enctype="multipart/form-data">
						<input type="hidden" name="_token" value="{{ csrf_token() }}" />
						<div class="panel-body">
							@include('blocks.staff_info', ['role' => 'client', 'data' => $data])
						</div><!-- /.panel-body -->

						<div class="panel-footer">
							<span class="pull-right">
								<strong class="text-red">*</strong> : Thông tin bắt buộc
							</span>
							<button type="submit" type="submit" class="btn btn-primary" title="Gửi đăng ký để nhận tài khoản sử dụng hệ thống">Gửi đăng ký</button>
						</div><!--  /.panel-footer -->
					</form>
				</div><!-- /.panel -->
			</div>
		</div>
	</div><!--  /.container -->
</body>
@endsection

@section('script')
<script src="/plugins/datepick/jquery.datepick.js"></script>
<script src="/app/js/app.lib.js"></script>
<script src="/app/js/client/register.js"></script>
@include('blocks.nation_religion', ['routeName' => 'client.create'])
<script type="text/javascript">
	$(document).ready(function () {
		$('label').addClass('control-label');
	});
</script>
@endsection



