@extends('master.main_admin')
@section('title', 'Cập nhật sản phẩm khoa học')
@section('content-header')
    <section class="content-header">
        <h1>
            Triển khai
            <small>Sản phẩm khoa học</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#">Triển khai</a></li>
            <li>Sản phẩm khoa học</li>
            <li class="active">Cập nhật sản phẩm</li>
        </ol>
    </section>
@endsection <!-- /.content-header -->

@section('content')
<form action="{{ route('researcher.product.store') }}" method="POST" role="form">
    <input type="hidden" name="_token" value="{{ csrf_token() }}" />
    @include('deploy.product._form')
</form>
@endsection <!-- /.content -->

