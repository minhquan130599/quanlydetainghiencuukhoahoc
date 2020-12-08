@extends('master.main_admin')
@section('title', 'Cập nhật thông tin hội đồng thanh lý đề tài')
@section('content-header')
    <section class="content-header">
        <h1>
	        Triển khai
	        <small>Cập nhật thông tin hội đồng</small>
   	 	</h1>
	    <ol class="breadcrumb">
	        <li><a href="#">Triển khai</a></li>
	        <li>thanh lý đề tài</li>
	        <li class="active">Thành lập hội đồng</li>
	    </ol>
    </section>
@endsection <!-- /.content-header -->

@section('content')
<form action="{{ route('admin.liquidation.update', $data['expertise']->pk_imahd) }}" method="POST" autocomplete="off">
	<input type="hidden" name="_token" value="{{ csrf_token() }}" />
	@include('common.create_council', [
		'expertise' => $data['expertise'], 
		'topic_edit' => $data['topic_edit'], 
		'title' => 'Danh mục đề tài thanh lý',
		'council_infomation' => 'Thông tin hội đồng thanh lý đề tài'
	])
</form>
@endsection <!-- /.content -->