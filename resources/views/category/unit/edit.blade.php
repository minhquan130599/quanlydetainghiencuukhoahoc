@extends('master.main_admin')
@section('title', 'Cập nhật đơn vị')
@section('content-header')
    <section class="content-header">
        <h1>
	        Danh sách đơn vị
	        <small>Cập nhật đơn vị</small>
   	 	</h1>
	    <ol class="breadcrumb">
	        <li><a href="#">Danh sách đơn vị</a></li>
	        <li class="active">Cập nhật đơn vị</li>
	    </ol>
    </section>
@endsection

@section('content')
    <section class="content">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">Cập nhật đơn vị</h3>
            </div><!--/.box-header-->

            <form action="{{ route('admin.unit.update',$unit->pk_imadv) }}" method="POST" autocomplete="off">
                @include('category.unit._form', ['data' => $data,'unit'=>$unit])
            </form>
        </div><!--/.box-->
    </section><!--/.content-->
@endsection


