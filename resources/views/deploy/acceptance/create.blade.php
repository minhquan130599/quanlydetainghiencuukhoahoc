@extends('master.main_admin')
@section('title', 'Thành lập hội đồng nghiệm thu đề tài')
@section('content-header')
    <section class="content-header">
        <h1>
	        Triển khai
	        <small>Thành lập hội đồng nghiệm thu</small>
   	 	</h1>
	    <ol class="breadcrumb">
	        <li><a href="#">Triển khai</a></li>
	        <li>Hội đồng nghiệm thu</li>
	        <li class="active">Thành lập hội đồng</li>
	    </ol>
    </section>
@endsection <!-- /.content-header -->

@section('content')
<form action="{{ route('admin.acceptance.store') }}" method="POST" autocomplete="off">
	<input type="hidden" name="_token" value="{{ csrf_token() }}" />
	@include('common.create_council', [
		'title' => 'Danh mục đề tài cần nghiệm thu',
		'council_infomation' => 'Thông tin hội đồng nghiệm thu đề tài'
	])
</form>
@endsection <!-- /.content -->