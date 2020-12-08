@extends('master.main_admin')
@section('title', 'Thành lập hội đồng thẩm định')
@section('content-header')
    <section class="content-header">
        <h1>
	        Lập kế hoạch
	        <small>Thành lập hội đồng thẩm định</small>
   	 	</h1>
	    <ol class="breadcrumb">
	        <li><a href="#">Lập kế hoạch</a></li>
	        <li>Hội đồng thẩm định</li>
	        <li class="active">Thành lập hội đồng</li>
	    </ol>
    </section>
@endsection <!-- /.content-header -->

@section('content')
<form action="{{ route('admin.expertise.store') }}" method="POST" autocomplete="off">
	@include('plan.expertise._form', ['title' => 'Đề tài cần thẩm định', 'thead' => 'Danh mục các đề tài thẩm định'])
</form>
@endsection <!-- /.content -->