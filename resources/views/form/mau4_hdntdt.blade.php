<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link href="/app/images/logo.png" rel="shortcut icon" type="image/x-icon">
    <title>
        <i>PHIẾU NHẬN XÉT ĐỀ TÀI NGHIÊN CỨU KHOA HỌC</i> <br>
        <span style="font-weight: normal;">DÀNH CHO NGƯỜI PHẢN BIỆN</span>
    </title>
    <link rel="stylesheet" href="/app/css/a4.css">
    <script type="text/javascript" src="/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <style type="text/css">
        #main_footer tr td {
            text-align: center;
        }
    </style>
</head>
<body>

@foreach ($data['council'] AS $c)
    @if ( strstr($c->smota, "phản biện") )
    <page size="A4">
        <div id="container">
            <div class="header">
                <div class="left-header">
                    <span class="ten_donvi">HỌC VIỆN KỸ THUẬT MẬT MÃ<br /></span>
                    <b class="ten_donvi">{{ !empty($data['unit']->stendv) ? mb_convert_case($data['unit']->stendv, MB_CASE_UPPER, 'UTF-8') : 'KHOA: ' }}</b>
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
                    <i>PHIẾU NHẬN XÉT ĐỀ TÀI NGHIÊN CỨU KHOA HỌC</i> <br>
                    <span style="font-weight: normal;">DÀNH CHO NGƯỜI PHẢN BIỆN</span>
                </p></br>

                <div class="main_body_content">
                    <table id="main_table" width="100%">
                        <tr>
                            <td>
                                1. Họ tên người phản biện: {{ $c->shodem }}
                            </td>
                        </tr>

                        <tr>
                            <td>
                                2. Cơ quan công tác và địa chỉ liên hệ: {{ $c->stendv }}
                            </td>
                        </tr>
                        <tr>
                            <td>
                                3. Tên đề tài, mã số: {{ $data['topic']->stendt }}, Mã số: {{ $data['topic']->smasodetai }}
                            </td>
                        </tr>

                        <tr>
                            <td>
                                4. Họ tên chủ nhiệm đề tài: {{ $data['leader']->shodem }}
                            </td>
                        </tr>

                        <tr>
                            <td>
                                5. Cơ quan chủ trì: {{ $data['unit']->stendv }}
                            </td>
                        </tr>

                        <tr>
                            <td>
                                6. Nội dung nhận xét của phản biện:
                                <table width="100%">
                                    <tr>
                                        <td><b>A- Phần khái quát</b></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1. Bố cục đề tài:
                                            <p><i>(Đề tài gồm bao nhiêu phần, chương, trang, phụ lục, hình vẽ, bảng biểu...)</i></p>
                                            @for($i=0; $i<5; $i++)
                                            <p class="line">&nbsp;</p><!-- /.line -->
                                            @endfor
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            2. Nội dung cơ bản
                                            <p><i>(Nêu tiêu đề các phần chính và khái quát nội dung mỗi chương)</i></p>
                                            @for($i=0; $i<8; $i++)
                                            <p class="line">&nbsp;</p><!-- /.line -->
                                            @endfor
                                        </td>
                                    </tr>

                                    <tr>
                                        <td><b>B- Nhận xét những kết quả chính</b></td>
                                    </tr>

                                    <tr>
                                        <td>
                                            1. Mức độ sử dụng phương pháp nghiên cứu và hoàn thành nội dung sản phẩm nghiên cứu so với mục tiêu đề ra của tác giả:
                                            @for($i=0; $i<5; $i++)
                                            <p class="line">&nbsp;</p><!-- /.line -->
                                            @endfor
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            2. Giá trị khoa học và ứng dụng của đề tài:
                                            @for($i=0; $i<3; $i++)
                                            <p class="line">&nbsp;</p><!-- /.line -->
                                            @endfor
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            3. Hiệu quả nghiên cứu của đề tài:
                                            <p><i>(Về giáo dục và đào tạo, Về kinh tế - xã hội, Phương thức chuyển giao kết quả nghiên cứu và địa chỉ ứng dụng)</i></p>
                                            @for($i=0; $i<4; $i++)
                                            <p class="line">&nbsp;</p><!-- /.line -->
                                            @endfor
                                        </td>
                                    </tr> <br />

                                    <tr>
                                        <td><b>C- Kiến nghị, đề xuất</b></td>
                                    </tr>

                                    <tr>
                                        <td>
                                            1. Các nội dung cần sửa chữa, bổ sung, hoàn chỉnh
                                            @for($i=0; $i<4; $i++)
                                            <p class="line">&nbsp;</p><!-- /.line -->
                                            @endfor
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            2. Kiến nghị về khả năng áp dụng, khả năng phát triển của đề tài
                                            @for($i=0; $i<3; $i++)
                                            <p class="line">&nbsp;</p><!-- /.line -->
                                            @endfor
                                        </td>
                                    </tr> <br />

                                    <tr>
                                        <td><b>D- Đánh giá chung</b></td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <b>Đạt</b>
                                            @for($i=0; $i<20; $i++)&nbsp;@endfor
                                            <div class="square"></div>

                                            @for($i=0; $i<30; $i++)&nbsp;@endfor

                                            <b>Không đạt</b>
                                            @for($i=0; $i<20; $i++)&nbsp;@endfor
                                            <div class="square"></div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </br></br>
            <table width="100%" id="main_footer" align="center">
                <tr>

                    <td style="float: right">
                        <p><b>Người phản biện</b></p>
                        <p>(Ký và ghi rõ họ tên)</p>
                    </td>
                </tr>
            </table>
            </div><!-- /.content -->
        </div><!-- /.container -->
    </page>
    @endif
@endforeach
</body>
</html>