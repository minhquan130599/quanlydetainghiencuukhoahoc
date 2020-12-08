@extends('master.main_admin')
@section('title', 'Thành lập hội đồng thanh lý đề tài')
@section('content-header')
    <section class="content-header">
        <h1>
	        Triển khai
	        <small>Thành lập hội đồng thanh lý</small>
   	 	</h1>
	    <ol class="breadcrumb">
	        <li><a href="#">Triển khai</a></li>
	        <li>Hội đồng thanh lý</li>
	        <li class="active">Thành lập hội đồng</li>
	    </ol>
    </section>
@endsection <!-- /.content-header -->

@section('content')
<form action="{{ route('admin.liquidation.store') }}" method="POST" autocomplete="off">
	<input type="hidden" name="_token" value="{{ csrf_token() }}" />
	@include('common.create_council', [
		'title' => 'Danh mục đề tài thanh lý (<small class="text-danger text-bold">Đề tài đã được triển khai đều có thể thanh lý</small>)',
		'council_infomation' => 'Thông tin hội đồng thanh lý đề tài'
	])
</form>
@endsection <!-- /.content -->