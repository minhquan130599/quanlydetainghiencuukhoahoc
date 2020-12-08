@extends('master.main_admin')
@section('title', 'Đăng ký đề tài NCKH')
@section('content-header')
    <section class="content-header">
        <h1>
	        Đăng ký đề tài
        </h1>
	    <ol class="breadcrumb">
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

            <form action="{{ route('researcher.registerthread.store') }}" method="POST" autocomplete="off">
                @if(substr($time_system[0]['sgiatri'],0, 10) < $date && $date < substr($time_system[0]['sgiatri'], -10))
                    @include('plan.topic._form', ['data' => $data])
                @else
                    @include('plan.topic._form', ['data' => $data])
                @endif
                
            </form>
        </div><!--/.box-->
    </section><!--/.content-->
@endsection <!-- /.content -->

