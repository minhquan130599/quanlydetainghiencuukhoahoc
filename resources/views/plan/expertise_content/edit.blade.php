@extends('master.main_admin')
@section('title', 'Cập nhật nội dung thẩm định')
@section('content-header')
    <section class="content-header">
        <h1>
	        Lập kế hoạch
	        <small>Cập nhật nội dung thẩm định</small>
   	 	</h1>
	    <ol class="breadcrumb">
	        <li><a href="#">Lập kế hoạch</a></li>
	        <li>Hội đồng thẩm định</li>
	        <li class="active">Cập nhật nội dung thẩm định</li>
	    </ol>
    </section>
@endsection <!-- /.content-header -->

@section('content')
<section class="content">
	<div class="row">
		<div class="col-sm-8">
			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">Cập nhật nội dung thẩm định</h3><!--  /.box-title -->
				</div><!--  /.box-header -->
				
				<form action="{{ route('admin.expertise_content.update', $data['content']->pk_imabctd) }}" method="POST" autocomplete="off" class="form-horizontal">
					<input type="hidden" name="_token" value="{{ csrf_token() }}" />
					@include('plan.expertise_content._form', ['data' => $data])
				</form>
			</div><!--  /.box -->
		</div><!--  /.col-sm-8 -->
		
		@include('plan.expertise_content._before', [
			'data' => $data, 
			'title' => 'Những lần thẩm định trước'
		])
	</div><!--  /.row -->
</section><!--  /.content -->
@endsection <!-- /.content -->
