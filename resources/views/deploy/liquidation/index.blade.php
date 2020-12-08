@extends('master.main_admin')
@section('title', 'Tra cứu hội đồng thanh lý đề tài')
@section('content-header')
    <section class="content-header">
        <h1>
	        Triển khai
	        <small>Tra cứu hội đồng thanh lý</small>
   	 	</h1>
	    <ol class="breadcrumb">
	        <li>Triển khai</li>
	        <li>thanh lý đề tài</li>
	        <li class="active">Tra cứu hội đồng</li>
	    </ol>
    </section>
@endsection <!-- /.content-header -->

@section('content')
	<section class="content">
    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Tra cứu hội đồng thanh lý đề tài</h3>
            <div class="box-tools">
                <a href="{{ route('admin.liquidation.create') }}" class="btn btn-primary btn-sm" title="Quay về trang cập nhật hội đồng thanh lý" data-toggle="tooltip"><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> Thêm</a>
            </div><!--  /.box-tools -->
        </div><!-- /.box-header -->

	@include('common.expertise_survey', [
		'title' => 'Tra cứu hội đồng thanh lý',
		'name' => 'thanh lý',
		'redirectRoute' => 'admin.liquidation.edit',
        'remove_search' => 'admin.liquidation.index',
        'data'          => $data
	])
@endsection <!-- /.content -->

@section('script')
<script src="/app/js/plan/expertise.js" type="text/javascript"></script>
@endsection