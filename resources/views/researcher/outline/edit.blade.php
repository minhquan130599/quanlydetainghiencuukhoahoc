@extends('master.main_admin')
@section('title', 'Cập nhật đơn vị')
@section('content-header')
    <section class="content-header">
        <h1>
	        Cập nhật thông tin đề cương đề tài
   	 	</h1>
	    <ol class="breadcrumb">
	        <li><a href="#">Cập nhật thông tin đề cương đề tài</a></li>
	        <li class="active">Cập nhật</li>
	    </ol>
    </section>
@endsection

@section('content')
    <section class="content">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">Cập nhật thông tin đề cương đề tài</h3>
            </div><!--/.box-header-->

            <form action="{{ route('researcher.outline.update',$outline->pk_imadt) }}" method="POST" autocomplete="off">
                @include('researcher.outline._form', ['data' => $data,'outline'=>$outline])
            </form>
        </div><!--/.box-->
    </section><!--/.content-->
@endsection


