@extends('master.main_admin')
@section('title', 'Cập nhật thông tin hội đồng thẩm định')
@section('content-header')
    <section class="content-header">
        <h1>
	        Lập kế hoạch
	        <small>Cập nhật thông tin hội đồng</small>
   	 	</h1>
	    <ol class="breadcrumb">
	        <li><a href="#">Lập kế hoạch</a></li>
	        <li>Hội đồng thẩm định</li>
	        <li class="active">Thành lập hội đồng</li>
	    </ol>
    </section>
@endsection <!-- /.content-header -->

@section('content')
<form action="{{ route('admin.expertise.update', $data['expertise']->pk_imahd) }}" method="POST" autocomplete="off">
	<input type="hidden" name="_token" value="{{ csrf_token() }}" />
	@include('plan.expertise._form', ['expertise' => $data['expertise'], 'topic_edit' => $data['topic_edit'], 'title' => 'Đề tài thẩm định', 'thead' => 'Danh mục đề tài có thể thẩm định'])
</form>
@endsection <!-- /.content -->