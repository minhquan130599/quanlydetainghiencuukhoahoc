<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>@yield('title')</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <link href="/app/images/favicon.ico" rel="shortcut icon" type="image/x-icon">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/plugins/font-awesome/css/font-awesome.min.css">

  <!-- LTE -->
  <link rel="stylesheet" href="/dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="/plugins/iCheck/minimal/minimal.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="/plugins/select2/select2.min.css">
  <!-- Datepick -->
  <link rel="stylesheet" href="/plugins/datepick/jquery.datepick.css">
  <link rel="stylesheet" href="/app/css/style.css">
  <link rel="stylesheet" href="/plugins/flipclock/flipclock.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>

	@yield('content')

<!-- jQuery 2.2.3 -->
<script src="/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="/bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="/plugins/iCheck/icheck.min.js"></script>
<!-- Select2 -->
<script src="/plugins/select2/select2.min.js"></script>
<!-- App Lib -->
@yield('script')
</body>
</html>