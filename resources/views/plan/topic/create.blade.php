@extends('master.main_admin')
@section('title', 'Đăng ký đề tài NCKH')
@section('content-header')
    <section class="content-header">
        <h1>
	        Lập kế hoạch
	        <small>Đăng ký đề tài</small>
   	 	</h1>
	    <ol class="breadcrumb">
	        <li>Lập kế hoạch</li>
	        <li class="active">Đăng ký đề tài</li>
	    </ol>
    </section>
@endsection <!-- /.content-header -->

@section('content')
    <section class="content">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">Đăng ký đề tài</h3>
            </div><!--/.box-header-->

            <form action="{{ route('admin.topic.store') }}" method="POST" autocomplete="off">
                @include('plan.topic._form', ['data' => $data])
            </form>
        </div><!--/.box-->
    </section><!--/.content-->
@endsection <!-- /.content -->

