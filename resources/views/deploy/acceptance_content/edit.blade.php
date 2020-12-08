@extends('master.main_admin')
@section('title', 'Nội dung nghiệm thu đề tài')
@section('content-header')
    <section class="content-header">
        <h1>
	        Triển khai
	        <small>Nội dung nghiệm thu</small>
   	 	</h1>
	    <ol class="breadcrumb">
	        <li><a href="#">Triển khai</a></li>
	        <li>Nghiệm thu đề tài</li>
	        <li class="active">Nội dung nghiệm thu</li>
	    </ol>
    </section>
@endsection <!-- /.content-header -->

@section('content')
	<form action="{{ route('admin.acceptance_content.update', $data['explain']->pk_imantcs) }}" method="POST" class="form-horizontal" autocomplete="off">
		<input type="hidden" name="_token" value="{{ csrf_token() }}" />
		<section class="content">
			<div class="box box-info">
				<div class="box-header with-border">
	                <h3 class="box-title">Nội dung nghiệm thu</h3> <br />
	                <strong>Đề tài: <i class="text-green">{{ $data['topic_name']->stendt }}</i></strong>
	                <a href="{{ route('deploy.category.show', $data['topic_name']->pk_imadt) }}" id="detail" class="btn btn-link pull-right no-padding" target="_blank">Xem chi tiết đề tài</a>
	                <p>
	                	<strong class="text-red">Đề tài khoa học chỉ nghiệm thu 1 lần duy nhất</strong><br />
	                	<small>Di chuột vào các đề mục hoặc xem <a href="javascript:void(0);" class="moveToNeo">diễn giải</a> để hiển thị chi tiết</small>
	               	</p>
	            </div><!--/.box-header-->
		
				@include('deploy.acceptance_content._form', [
					'data' => $data, 
					'explain' => $data['explain']
				])
	        </div><!-- /.box -->
	    </section>
    </form>

    @include('deploy.acceptance_content._explain')
@endsection <!-- /.content -->

