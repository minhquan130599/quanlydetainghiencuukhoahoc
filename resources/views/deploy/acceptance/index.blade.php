@extends('master.main_admin')
@section('title', 'Tra cứu hội đồng nghiệm thu đề tài')
@section('content-header')
    <section class="content-header">
        <h1>
	        Triển khai
	        <small>Tra cứu hội đồng nghiệm thu</small>
   	 	</h1>
	    <ol class="breadcrumb">
	        <li><a href="#">Triển khai</a></li>
	        <li>Nghiệm thu đề tài</li>
	        <li class="active">Tra cứu hội đồng</li>
	    </ol>
    </section>
@endsection <!-- /.content-header -->

@section('content')
	<section class="content">
    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Tra cứu hội đồng nghiệm thu đề tài</h3>
            <div class="box-tools">
                <a href="{{ route('admin.acceptance.create') }}" class="btn btn-primary btn-sm" title="Cập nhật hội đồng nghiệm thu đề tài" data-toggle="tooltip"><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> Thêm</a>
            </div><!--  /.box-tools -->
        </div><!-- /.box-header -->

	@include('common.expertise_survey', [
		'title' => 'Tra cứu hội đồng nghiệm thu',
		'name' => 'nghiệm thu',
		'redirectRoute' => 'admin.acceptance.edit',
        'search_data' => $data['search_data'],
        'remove_search' => 'admin.acceptance.index'
	])
@endsection <!-- /.content -->


@section('script')
<script src="/app/js/plan/expertise.js" type="text/javascript"></script>
<script src="/app/js/council.js"></script>
@endsection