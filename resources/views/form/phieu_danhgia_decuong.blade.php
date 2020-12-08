@forelse ($data['council'] AS $k => $council)
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link href="/app/images/logo.png" rel="shortcut icon" type="image/x-icon">
    <title>PHIẾU ĐÁNH GIÁ ĐỀ CƯƠNG ĐỀ TÀI NGHIÊN CỨU KHOA HỌC CẤP KHOA</title>
    <link rel="stylesheet" href="/app/css/a4.css">
    <script type="text/javascript" src="/plugins/jQuery/jquery-2.2.3.min.js"></script>
</head>
<body>
    <page size="A4">
        <div id="container">
            <div class="header">
                <div class="left-header">
                    <span class="ten_donvi">HỌC VIỆN KỸ THUẬT MẬT MÃ<br /></span>
                    <b class="ten_donvi">ĐƠN VỊ: {{ mb_convert_case($council->stendv, MB_CASE_UPPER, 'UTF-8') }}</b>
                </div>
                <div class="right-header">
                    <span class="bold-center">
                        <b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM</b><br />
                        <b>Độc lập - Tự do - Hạnh phúc</b>
                    </span>
                    <div class="gachduoi">
                        ___________________
                    </div>

                </div>
            </div><!-- End header --> <div style="clear:both"></div>

            <div class="content">
                <p class="tieude_vanban">
                    PHIẾU ĐÁNH GIÁ ĐỀ CƯƠNG <br>
                    ĐỀ TÀI NGHIÊN CỨU KHOA HỌC CẤP KHOA NĂM HỌC
                    {!! date('Y', time()) - 1 !!} - {!! date('Y', time()) !!}
                </p></br>

                <!-- NỘI DUNG BIỂU MẪU -->
                <div class="main_body_content">
                    <table id="main_table">
                        <tr>
                            <td>
                                <b>1. Họ tên thành viên hội đồng:</b>
                                {{ $council->shodem }}
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>2. Đơn vị:</b>
                                {{ $council->stendv }}
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>3. Tên đề tài:</b>
                                {{ $data['topic']->stendt }}
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>4. Ngày họp:</b>
                                {{ $council->dngaylamviec }}
                            </td>
                        </tr>

                        <tr>
                            <td >
                                <b>5. Địa điểm:</b>
                                Phòng hợp tác quốc tế, số 56, Vũ Trọng Phụng
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <b>6. Đánh giá của thành viên hội đồng:</b>
                                <table width="100%" border="1" style="border-collapse:collapse">
                                    <tr>
                                        <th>TT</th>
                                        <th>Nội dung đánh giá</th>
                                        <th width="80px">Đạt</th>
                                        <th width="80px">Không đạt</th>
                                        <th width="100px">Ghi chú</th>
                                    </tr>

                                    <tr>
                                        <td rowspan="4"><b>1</b></td>
                                        <td><b>Tên đề tài</b></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Tính rõ ràng</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Tính khái quát</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>

                                    <tr>
                                        <td>Không trùng lặp với các đề tài đã và đang nghiên cứu</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>

                                    <tr>
                                        <td rowspan="3"><b>2</b></td>
                                        <td><b>Tính cấp thiết</b></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>

                                    <tr>
                                        <td>Đáp ứng nhu cầu của thực tiễn đào tạo tại HỌC VIỆN KỸ THUẬT MẬT MÃ</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Đáp ứng nhu cầu nghiên cứu phát triển khoa học, chuyển giao công nghệ, phục vụ phát triển kinh tế-xã hội</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="3"><b>3</b></td>
                                        <td><b>Mục tiêu</b></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>

                                    <tr>
                                        <td>Mức độ rõ ràng, cụ thể</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Mức độ phù hợp với tên đề tài</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="4"><b>4</b></td>
                                        <td><b>Nội dung nghiên cứu</b></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>

                                    <tr>
                                        <td>Phù hợp với mục tiêu của đề tài</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Tính hệ thống</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Tính khả thi </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="4"><b>5</b></td>
                                        <td><b>Sản phẩm và kết quả dự kiến </b></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>

                                    <tr>
                                        <td>Sản phẩm nghiên cứu phục vụ đào tạo</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Sản phẩm ứng dụng</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Sản phẩm khác</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td><b>6</b></td>
                                        <td><b>Đánh giá chung</b></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </br></br>

            <table width="100%">
                <tr>
                    <td><b>7. Ý kiến và kiến nghị khác:</b></td>
                </tr>
                <tr>
                    <td>
                        @for($i=0; $i<9; $i++)
                        <p class="line">&nbsp;</p>
                        @endfor
                    </td>
                </tr>
            </table>

            <table width="100%" id="main_footer">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="float: right">
                        <p>Ngày........tháng........năm........</p>
                        <center><p>Người đánh giá</p></center>
                        <center><i>(ký, ghi rõ họ tên)</i></center>
                    </td>
                </tr>
            </table>
            <!-- /.END NỘI DUNG BIỂU MẪU -->
        </div><!-- /.content -->
    </div><!-- /.container -->
</page>
</body>
</html>
@empty
<strong>
    <font color="rew">
        Không có thành viên trong hội đồng thẩm định này.
        Vui lòng cập nhật thành viên của hội đồng này tại
    </font>
</strong>
@endforelse