@extends('master.main_admin')
@section('title', 'Cập nhật đăng ký đề tài NCKH')
@section('content-header')
    <section class="content-header">
        <h1>
	        Lập kế hoạch
	        <small>Cập nhật đăng ký</small>
   	 	</h1>
	    <ol class="breadcrumb">
	        <li>Lập kế hoạch</li>
	        <li class="active">Đăng ký đề tài</li>
	    </ol>
    </section>
@endsection

@section('content')
    <section class="content">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">Cập nhật đăng ký</h3>
            </div><!--/.box-header-->

            <form action="{{ route('admin.topic.update', $topic->pk_imadt) }}" method="POST" autocomplete="off">
                @include('plan.topic._form', ['data' => $data,'data_join' => $data_join])
            </form>
        </div><!--/.box-->
    </section><!--/.content-->
@endsection


