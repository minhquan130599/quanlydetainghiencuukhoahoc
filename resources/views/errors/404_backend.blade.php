@extends('master.main_admin')
@section('title', 'Không tìm thấy trang')

@section('content-header')
    <section class="content-header">
      <ol class="breadcrumb">
          <li>Lỗi hệ thống</li>
          <li class="active">Không tìm thấy trang</li>
      </ol>
    </section>
@endsection <!-- /.content-header -->

@section('content')
  <section class="content">
    <div class="error-page">
      <h2 class="headline text-yellow"> 404</h2>
      <div class="error-content" style="padding-top: 20px;">
        <h3><i class="fa fa-warning text-yellow"></i> Không tìm thấy trang.</h3>
        <p>
          Hệ thống không thể tìm thấy trang mà bạn đã yêu cầu.
          Vui lòng thử lại hoặc bấm
          <strong><a title="Quay về trang quản trị" href="{{ route('welcome') }}">vào đây</a></strong>
          để quay về trang quản trị
        </p>
      </div><!-- /.error-content -->
    </div><!-- /.error-page -->
  </section><!-- /.content -->
@endsection