@extends('master.main_admin')
@section('title', 'Cập nhật thông tin hồ sơ cán bộ')
@section('content-header')
  <section class="content-header">
    <h1>
        Hồ sơ cán bộ
        <small>Cập nhật</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#">Cán bộ</a></li>
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
    
    <form action="{{  route('researcher.information.update', $id)}}" method="POST" class="form-horizontal" autocomplete="off" enctype="multipart/form-data">
        <input type="hidden" name="_token" value="{{ csrf_token() }}" />
        <div class="box-body">
            @include('blocks.messages')
            @include('blocks.staff_info', ['data' => $data, 'staff' => isset($staff) ? $staff : null])
        </div><!-- /.box-body -->
        
        <div class="box-footer">
           <span class="pull-right">
                <strong class="text-red">*</strong> : Thông tin bắt buộc
            </span>
            <button type="submit" type="submit" class="btn btn-primary">Lưu thông tin</button>
        </div><!-- /.box-footer -->
    </form>
    <!-- /.box-footer-->
  </div>
  <!-- /.box -->
</section><!-- /.content -->
@endsection

@section('script')
<script src="/app/js/client/register.js"></script>
@include('blocks.nation_religion', ['routeName' => 'admin.staff.create'])
@endsection
    
