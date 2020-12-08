@extends('master.main_admin')
@section('title', 'Đổi mật khẩu')
@section('content-header')
    <section class="content-header">
        <h1>
          Đổi mật khẩu
      </h1>
      <ol class="breadcrumb">
          <li><a href="#">Cập nhật thông lý lịch khoa học</a></li>
          <li class="active">Đổi mật khẩu</li>
      </ol>
    </section>
@endsection

@section('content')
<style type="text/css">
  .error{
    color:red;
  }
</style>
    <section class="content">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">Đổi mật khẩu</h3>
            </div><!--/.box-header-->

            <form action="{{ route('researcher.password.update') }}" method="POST" autocomplete="off" class="form_validate">
              <div class="box-body">
                  <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                  <div class="row">
                      <div class="col-md-5 col-md-offset-1">
                          <div class="form-group">
                              <label>Tài khoản <span class="text-red">*</span></label>
                              <input type="text" class="form-control" value="{{ Auth::user()->stendn}}" disabled="disabled">
                          </div><!--  /.form-group -->

                          <div class="form-group">
                              <label>Mật khẩu cũ <span class="text-red">*</span></label>
                              <input type="password" class="form-control" name="txtMatkhaucu" value="">
                              <br><b id="mkcu" class="error"></b>
                          </div><!--  /.form-group -->

                          <div class="form-group">
                              <label>Mật khẩu mới <span class="text-red">*</span></label>
                              <input type="password" class="form-control" name="txtMatkhaumoi" value="">
                          </div><!--  /.form-group -->

                          <div class="form-group">
                              <label>Nhập lại mật khẩu <span class="text-red">*</span></label>
                              <input type="password" class="form-control" name="txtNhaplaimk" value="">
                          </div><!--  /.form-group -->
                      </div><!--  /.col-sm-6 -->

                  </div><!-- /.row -->
              </div><!--/.box-body-->

              <div class="box-footer">
                 <span class="pull-right">
                      <strong class="text-red">*</strong> : Thông tin bắt buộc <br>
                  </span>
                  <button id="doimatkhau" type="submit" type="submit" class="btn btn-primary col-md-offset-1">Đổi mật khẩu</button>
              </div><!-- /.box-footer -->
            </form>
        </div><!--/.box-->
    </section><!--/.content-->
    @section('script')
        <script src="/plugins/jquery-validation/jquery.validate.min.js"></script>
        <script src="/plugins/jquery-validation/additional-methods.min.js"></script>
        <script src="/app/js/researcher/password.js"></script>
    @endsection
@endsection
