@extends('master.main_admin')
@section('title', 'Cập nhật thông tin hồ sơ cán bộ')
@section('content-header')
  <section class="content-header">
    <h1>
        Hồ sơ cán bộ
        <small>Cập nhật</small>
    </h1>
    <ol class="breadcrumb">
        <li>Quản lý hồ sơ cán bộ</li>
        <li class="active">Cập nhật hồ sơ cán bộ</li>
    </ol>
  </section>
@endsection

@section('content')
<section class="content">
  <!-- Default box -->
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">Cập nhật hồ sơ cán bộ</h3>
    </div><!-- /.box-header -->

    <form action="{{ isset($staff) ? route('admin.staff.update', $id) : route('admin.staff.store') }}" method="POST" class="form-horizontal" autocomplete="off" enctype="multipart/form-data">
        <input type="hidden" name="_token" value="{{ csrf_token() }}" />
        <div class="box-body">
            @include('blocks.messages')
            @include('blocks.staff_info', ['role' => 'admin', 'data' => $data, 'staff' => isset($staff) ? $staff : null])
        </div><!-- /.box-body -->

        <div class="box-footer">
           <span class="pull-right">
                <strong class="text-red">*</strong> : Thông tin bắt buộc
            </span>
            <input type="hidden" name="img_name_google" />
            <button type="submit" type="submit" class="btn btn-primary" data-toggle="tooltip" title="Lưu thông tin hồ sơ của cán bộ">Lưu thông tin</button>
        </div><!-- /.box-footer -->
    </form>

    <canvas id="canvas" width="80" height="80" class="sr-only"></canvas>
    <!-- /.box-footer-->
  </div>
  <!-- /.box -->
</section><!-- /.content -->
@endsection

@section('style')
  <!-- Datepick -->
  <link rel="stylesheet" href="/plugins/datepick/jquery.datepick.css">
@endsection

@section('script')
<!-- Datepick -->
<script src="/plugins/datepick/jquery.datepick.js"></script>
<script src="/app/js/client/register.js"></script>
@include('blocks.nation_religion', ['routeName' => 'admin.staff.create'])
@endsection

