@extends('master.main')
@section('title', 'Hệ thống hỗ trợ quản lý nghiên cứu khoa học')
@section('content')

<body class="hold-transition login-page">
    <div class="login-box">
        <div class="login-logo">
          <h3 class="text-center text-blue">
            <b>HỌC VIỆN KỸ THUẬT MẬT MÃ</b>
        </h3>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg text-uppercase text-bold text-blue">
            Hệ thống hỗ trợ công tác quản lý <br>nghiên cứu khoa học
        </p>

        <form action="{{ route('login.check') }}" method="post" autocomplete="off">
            <input type="hidden" name="_token" value="{{ csrf_token() }}" />
            @if (Session::has('flash_message'))
            <div class="form-group">
                <div class="alert alert-danger">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    {{ Session::get('flash_message') }}
                </div>
            </div><!--  /.form-group -->
            @endif

            @include('blocks.errors')

            <div class="form-group has-feedback" title="Tài khoản đăng nhập">
                <div class="input-group">
                    <div class="input-group-addon">
                        <span class="glyphicon glyphicon-user"></span>
                    </div>
                    <input type="text" name="txtUserAccount" class="form-control" value="{{ old('txtUserAccount', Session::get('stendn') ? Session::get('stendn') : '') }}" placeholder="Mời nhập tài khoản" autofocus="autofocus" required="required">
                </div>
            </div><!-- /.form-group -->

            <div class="form-group has-feedback" title="Mật khẩu đăng nhập">
                <div class="input-group">
                    <div class="input-group-addon"> <span class="glyphicon glyphicon-lock"></span></div>
                    <input type="password" class="form-control" name="txtPassword" value="{{ old('txtPassword', Session::get('password') ? Session::get('password') : '') }}" placeholder="&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;">
                </div>
                <!--  /.input-group -->
            </div><!-- /.form-group -->

            <div class="row">
                <div class="col-xs-7">
                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox" name="remember" class="iCheck" {{ old('remember', Session::get('remember') ? 'checked' : null) }}>
                            <span data-toggle="tooltip" data-placement="bottom" title="Luôn ở trạng thái đăng nhập">Lưu đăng nhập</span>
                        </label>
                    </div>

                </div>
                <!-- /.col -->
                <div class="col-xs-5">
                    <button title="Đăng nhập vào hệ thống" type="submit" name="submit" class="btn btn-primary btn-block btn-flat"><i class="fa fa-sign-in" aria-hidden="true"></i> Đăng nhập</button>
                </div>
                <!-- /.col -->
            </div><!-- /.row -->
        </form>

        <div class="social-auth-links text-center">
            <p>- <span class="glyphicon glyphicon-phone"></span> Hỗ trợ: 086686332-</p>
            <a href="{{ route('client.create') }}" class="text-center">Đăng ký hồ sơ cán bộ</a>  <br />
            <a href="javascript:void(0);" id="manual"><i class="fa-file-word"></i> Xem tài liệu hướng dẫn sử dụng</a>
        </div>
        <hr class="row" />
        <!-- /.social-auth-links -->

        <a data-toggle="modal" href='#modal-id' style="float: right">Đóng góp ý kiến</a>
        <div class="modal fade" id="modal-id">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="{{ route('app.feedback.store') }}" method="POST" class="form-horizontal" role="form">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">Đóng góp ý kiến</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="inputTxtEmail" class="col-sm-3 control-label">E-mail:</label>
                                <div class="col-sm-9">
                                    <input type="email" name="txtEmail" id="inputTxtEmail" class="form-control" value="" required="required">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="inputTxtSdt" class="col-sm-3 control-label">Điện thoại:</label>
                                <div class="col-sm-9">
                                    <input type="text" name="TxtSdt" id="inputTxtSdt" class="form-control" value="" required="required" min="10">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="textareaTxtNoidung" class="col-sm-3 control-label">Ý kiến của bạn:</label>
                                <div class="col-sm-9">
                                    <textarea name="txtNoidung" id="textareaTxtNoidung" class="form-control" rows="3" required="required" min="20" placeholder="Nhập ít nhất 10 ký tự"></textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-9 col-sm-offset-3">

                                </div><!-- /.col-sm-9 col-sm-offset-2 -->
                            </div><!-- /.form-group -->

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            <button type="submit" class="btn btn-primary">Gửi ý kiến</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <a href="#">Quên mật khẩu</a>
    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->
@endsection
@section('script')
@if (!empty (Session::get('message')))
<script type="text/javascript">alert('{!! Session::get('message') !!}');</script>
@endif
<!-- <script src='https://www.google.com/recaptcha/api.js'></script> -->
<script type="text/javascript">
    $(document).ready(function() {
        if ($('.iCheck').length) {
            $('.iCheck').iCheck({
              checkboxClass: 'icheckbox_minimal',
              radioClass: 'iradio_minimal',
                  increaseArea: '20%' // optional
              });
        }
    });

    $('#manual').on('click', function () {
        alert("Vui lòng đăng nhập để xem tài liệu hướng dẫn");
        return document.cookie = "manual=success";
    })
</script>
@endsection

