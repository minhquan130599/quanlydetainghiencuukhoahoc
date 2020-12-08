<?php
    session_start();
    $_SESSION['permission'] = Auth::user()->pk_imanhomcb; // Quyền
    $_SESSION['staffID'] = Auth::user()->pk_smacanbo; // Mã cán bộ
?>
<!DOCTYPE html>
<html ng-app='myApp' ng-init='staffID="{{Auth::user()->pk_smacanbo}}"'>
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
  <!-- Datatable -->
  <link rel="stylesheet" href="/plugins/datatables/dataTables.bootstrap.css">
  <!-- daterange picker -->
  <link rel="stylesheet" href="/plugins/daterangepicker/daterangepicker.css">
  <!-- daterange picker -->
  <link rel="stylesheet" href="/plugins/daterangepicker/daterangepicker.css">
  <!-- bootstrap datepicker -->
  <link rel="stylesheet" href="/plugins/datepicker/datepicker3.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="/plugins/iCheck/all.css">
  <!-- Datepick -->
  <link rel="stylesheet" href="/plugins/datepick/jquery.datepick.css">
  <!-- PNotify -->
  <link rel="stylesheet" media="all" href="/plugins/pnotify/pnotify.custom.min.css">
    <!-- Select2 -->
  <link rel="stylesheet" href="/plugins/select2/select2.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="/dist/css/skins/skin-purple-light.min.css">
  <link rel="stylesheet" href="/app/css/style.css">
  <link rel="stylesheet" href="/app/css/jqueryautocomplete.css">
  @yield('style') <!-- /.Include CSS here -->
  <base href="{{ url('/') }}" />

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <script src="/plugins/ckeditor/ckeditor.js" type="text/javascript"></script>
  <script src="/plugins/ckfinder/ckfinder.js" type="text/javascript"></script>
</head>
<body class="skin-purple-light layout-top-nav">
    <div class="loader"></div>
    <!-- Site wrapper -->
    <div class="wrapper">