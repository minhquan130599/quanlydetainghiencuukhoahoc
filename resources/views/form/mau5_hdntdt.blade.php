<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link href="/app/images/logo.png" rel="shortcut icon" type="image/x-icon">
    <title>@yield('title')</title>
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
    <page size="A4">
        <div id="container">
            <div class="header">
                <div class="left-header">
                    <span class="ten_donvi">HỌC VIỆN KỸ THUẬT MẬT MÃ<br /></span>
                    <b class="ten_donvi">{{ !empty($data['unit']) ? mb_convert_case($data['unit']->stendv, MB_CASE_UPPER, 'UTF-8') : 'KHOA: ' }}</b>
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
                    PHIẾU ĐÁNH GIÁ NGHIỆM THU ĐỀ TÀI NCKH CẤP {{ $data['topic']->pk_smaldt == 'LDT_01' ? 'KHOA' : 'TRƯỜNG' }}
                </p></br>

                <div class="main_body_content">
                    <table id="main_table">
                        <tr>
                            <td>1. Họ và tên thành viên hội đồng: {{ $c->shodem }}</td>
                            <td>Đơn vị: {{ $c->stendv }}</td>
                        </tr>
                        <tr>
                            <td colspan="2">2. Tên đề tài: {{ $data['topic']->stendt }}</td>
                        </tr>
                        <tr>
                            <td colspan="2">3. Chủ nhiệm đề tài: {{ $data['leader']->shodem }}</td>
                        </tr>

                        <tr>
                            <td colspan="2">4. Đơn vị chủ trì: {{ $data['unit']->stendv }}</td>
                        </tr>


                        <tr>
                            <td>5. Ngày họp: {{ $data['council'][0]->dngaylamviec }}</td>
                            <td>Địa điểm: Phòng quản lý khoa học </td>
                        </tr>

                        <tr>
                            <td>5. Quyết định thành lập hội đồng số: {{ $data['council'][0]->squyetdinh }}</td>
                            <td>ngày {{ $data['council'][0]->dngaythanhlap }}</td>
                        </tr>

                        <tr>
                            <td>
                                7. Điểm đánh giá theo các nội dung sau:
                            </td>
                        </tr>

                        <tr>
                            <table width="100%" border="1" style="border-collapse:collapse" class="bangdanhgia" id="main_table">
                                <tr>
                                    <th width="6%">TT</th>
                                    <th>Các nội dung đánh giá</th>
                                    <th width="10%">Điểm <br>tối đa</th>
                                    <th width="10%">Điểm <br>đánh giá</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td><b>Mức độ hoàn thành so với đăng ký trong Thuyết minh đề tài</b></td>
                                    <td>50</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>1.1</td>
                                    <td>Mục tiêu</td>
                                    <td>15</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>1.2</td>
                                    <td>Nội dung</td>
                                    <td>20</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>1.3</td>
                                    <td>Phương pháp nghiên cứu</td>
                                    <td>15</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td><b>Giá trị khoa học và ứng dụng kết quả nghiên cứu</b></td>
                                    <td><b>20</b></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>2.1</td>
                                    <td>Giá trị khoa học</td>
                                    <td>10</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>2.2</td>
                                    <td>Giá trị ứng dụng</td>
                                    <td>10</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td><b>Hiệu quả nghiên cứu</b></td>
                                    <td><b>15</b></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>3.1</td>
                                    <td>Về giáo dục đào tạo</td>
                                    <td>5</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>3.2</td>
                                    <td>Về kinh tế - xã hội</td>
                                    <td>5</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>3.3</td>
                                    <td>Phương pháp chuyển giao kết quả nghiên cứu và địa chỉ ứng dụng</td>
                                    <td>5</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>
                                        <b>Các kết quả vượt trội</b> <i>(điểm thưởng)</i>
                                        <p>Có đào tạo thạc sĩ, nghiên cứu sinh; Có bài báo khoa học đăng trên tạp chí trong nước, quốc tế...</p>
                                    </td>
                                    <td><b>5</b></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td><b>Hình thức, cấu trúc và phương pháp trình bày</b></td>
                                    <td><b>10</b></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><b>Cộng</b></td>
                                    <td><b>100</b></td>
                                    <td></td>
                                </tr>
                            </table>
                        </tr>

                        <tr>
                            <td>8. Xếp loại:................. <i>(theo điểm: Xuất sắc: 95-100 điểm; Tốt: 85-94 điểm; Khá: 70-84 điểm; <br>
                                <b>Đạt:</b> 50-69 điểm; <b>Không đạt:</b> < 50 điểm)</i></td>
                            </tr>
                            <tr>
                                <td>
                                    <p>9. Ý kiến và kiến nghị khác:</p>
                                    <p class="line">&nbsp;</p><!-- /.line -->
                                </td>
                            </tr>

                        </table>

                        <br />
                        <table width="100%" id="main_footer" align="center">
                            <tr>
                                <td style="float: right;">
                                    <p><strong>Người đánh giá</strong></p>
                                    <i>(Ký, ghi rõ họ tên)</i>
                                </td>
                            </tr>
                        </table>

                    </div> </br></br>
                </div><!-- /.content -->
            </div><!-- /.container -->
    </page>

    <script type="text/javascript">
        $(document).ready(function() {
            $('.bangdanhgia tr').find('td:first, td:eq(2)').attr('align', 'center');
        });
    </script>
@endforeach
</body>
</html>