@extends('master.main_admin')
@section('title', 'Sai lệch dữ liệu')

@section('content-header')
    <section class="content-header">
      <ol class="breadcrumb">
          <li>Lỗi hệ thống</li>
          <li class="active">Sai lệch dữ liệu</li>
      </ol>
    </section>
@endsection <!-- /.content-header -->

@section('content')
  <section class="content">
    <div class="error-page">
      <h2 class="headline text-yellow"> 500</h2>
      <div class="error-content" style="padding-top: 20px;">
        <h3><i class="fa fa-warning text-yellow"></i> Sai lệch dữ liệu.</h3>
        <p class="text-justify">
          - Hệ thống phát hiện ra dữ liệu bị sai lệch bởi hành động của bạn. <br>
          - Để đảm bảo tính toàn vẹn dữ liệu, hệ thống đã khôi phục trạng thái cũ của dữ liệu. <br>
          - Vui lòng liên hệ SĐT: <a href="tel:0886686332">0886686332</a>, <a href="tel:0886686332">0886686332</a> hoặc gửi email tới địa chỉ:
          <a href="mailto:nguyenthimyhoa@gmail.com">nguyenthimyhoa@gmail.com</a>
          để được hỗ trợ kỹ thuật
          <!-- <strong><a title="Quay về trang đăng nhập" href="{{ route('default') }}">vào đây</a></strong>
          để quay về trang đăng nhập -->
        </p>
      </div><!-- /.error-content -->
    </div><!-- /.error-page -->
  </section><!-- /.content -->
@endsection
