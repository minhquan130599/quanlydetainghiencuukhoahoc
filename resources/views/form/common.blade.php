<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link href="/app/images/logo.png" rel="shortcut icon" type="image/x-icon">
    <title>@yield('title')</title>
    <link rel="stylesheet" href="/app/css/a4.css">
    <script type="text/javascript" src="/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <style type="text/css">@yield('inline_style')</style>
</head>
<body>
    <page size="A4">
        <div id="container">
            <div class="header">
                <div class="left-header">
                    <span class="ten_donvi">HỌC VIỆN KỸ THUẬT MẬT MÃ<br /></span>
                    <b class="ten_donvi">{{ !empty($unit) ? mb_convert_case($unit, MB_CASE_UPPER, 'UTF-8') : 'KHOA: ' }}</b>
                </div>
                <div class="right-header">
                    <span class="bold-center">
                        <b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM</b><br />
                        <b>Độc lập - Tự do - Hạnh phúc</b>
                    </span>
                    <div class="gachduoi">
                        ___________________
                    </div>
                    <span class="text-right" style="float: right;">
                        <i>
                            Hà Nội, ngày &nbsp;&nbsp;&nbsp;&nbsp; tháng &nbsp;&nbsp;&nbsp;&nbsp; năm
                        </i>
                    </span>
                </div>
            </div><!-- End header --> <div style="clear:both"></div>

            <div class="content">
                <p class="tieude_vanban">
                    @yield('title')
                </p></br>

                @yield('content')
            </div><!-- /.content -->
        </div><!-- /.container -->
    </page>

    @yield('page2')
</body>
</html>