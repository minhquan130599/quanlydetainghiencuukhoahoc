@extends('form.common', ['unit' => $data['unit']->stendv])
@section('title')
THUYẾT  MINH  ĐỀ CƯƠNG ĐỀ  TÀI <br>
NGHIÊN CỨU KHOA HỌC CẤP KHOA NĂM HỌC
{!! date('Y', time()) - 1 !!} - {!! date('Y', time()) !!}
@endsection
@section('content')
<div class="main_body_content">
    <table id="main_table">
        <tr>
            <td>
                <b>1. Tên đề tài:</b>
                {!! $data['topic']->stendt !!}
            </td>
        </tr>
        <tr>
            <td>
                <b>2. Mã số:</b>
                {!! $data['topic']->smasodetai !!}
            </td>
        </tr>
        <tr>
            <td>
                <b>3. Thời gian thực hiện:</b>
                {{ floor( ($data['topic']->dngaykt - $data['topic']->dngaybd)/(24*60*60*30) ) }} tháng,
                    từ tháng {{ date('m', $data['topic']->dngaybd) }} năm {{ date('Y', $data['topic']->dngaybd) }}
                    đến tháng {{ date('m', $data['topic']->dngaykt) }} năm {{ date('Y', $data['topic']->dngaykt) }}
            </td>
        </tr>
        <tr>
            <td>
                <b>4. Đơn vị chủ trì đề tài:</b>
                {{ $data['unit']->stendv }}
            </td>
        </tr>

        <tr>
            <td >
                <b>5. Chủ nhiệm đề tài</b>
                <table width="100%">
                    <tr>
                        <td>- Họ và tên: {{ $data['leader']->shodem }}</td>
                        <td>- Học vị: {{ $data['leader']->stenhv }}</td>
                    </tr>

                    <tr>
                        <td>- Di động: {{ $data['leader']->sdienthoai }}</td>
                        <td>- Email: {{ $data['leader']->semail }}</td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <b>6. Những thành viên tham gia nghiên cứu đề tài</b>
                <table width="100%">
                    <tr>
                        <td>7.1 Tiến độ thực hiện</td>
                        <table width="100%" border="1" style="border-collapse:collapse">
                            <tr>
                                <th align="center">TT</th>
                                <th align="center">Họ và tên</th>
                                <th align="center">Đơn vị công tác và <br>lĩnh vực chuyên môn</th>
                                <th align="center">Nội dung nghiên cứu<br> cụ thể được giao</th>
                                <th align="center">Chữ ký</th>
                            </tr>
                            <tr>
                                <td>.</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </table>
                    </tr>
                </table>
            </td>
        </tr>

        <tr>
            <td>
                <b>7. Đơn vị phối hợp chính</b>
                <table width="100%">
                    <tr>
                        <td>7.1 Tiến độ thực hiện</td>
                        <table width="100%" border="1" style="border-collapse:collapse">
                            <tr>
                                <th align="center">Tên đơn vị <br>trong và ngoài trường</th>
                                <th align="center">Nội dung phối hợp nghiên cứu</th>
                                <th align="center">Họ và tên <br>người đại diện đơn vị</th>
                            </tr>
                            <tr>
                                <td>.</td>
                                <td></td>
                                <td></td>
                            </tr>
                        </table>
                    </tr>
                </table>
            </td>
        </tr>

        <tr>
            <td>
                <b>8. Tổng quan tình hình nghiên cứu thuộc lĩnh vực của đề tài ở trong và ngoài nước</b>
            </td>
        </tr>

        <tr>
            <td>
                <p>8.1. Ngoài nước <i>(phân tích, đánh giá tình hình nghiên cứu thuộc lĩnh vực của đề tài trên thế giới, liệt kê danh mục các công trình nghiên cứu, tài liệu có liên quan đến đề tài được trích dẫn khi đánh giá tổng quan).</i></p>
            </td>
        </tr>

        <tr>
            <td>
                <p>8.2. Trong nước <i>(phân tích, đánh giá tình hình nghiên cứu thuộc lĩnh vực của đề tài ở Việt Nam, liệt kê danh mục các công trình nghiên cứu, tài liệu có liên quan đến đề tài được trích dẫn khi đánh giá tổng quan).</i></p>
            </td>
        </tr>
        <tr>
            <td>8.3. Danh mục các công trình đã công bố thuộc lĩnh vực của đề tài của chủ nhiệm và những thành viên tham gia nghiên cứu <i>(họ và tên tác giả; bài báo; ấn phẩm; các yếu tố về xuất bản).</i></td>
        </tr>

        <tr>
            <td>
                <p class="bold">9. Tính cấp thiết của đề tài:</p>
                {!! $data['topic']->scapthiet !!}
            </td>
        </tr>
        <tr>
            <td>
                <p class="bold">10. Mục tiêu đề tài:</p>
                 {!! $data['topic']->smuctieu !!}
            </td>
        </tr>
        <tr>
            <td><p class="bold">11. Đóng góp mới của đề tài</p></td>
        </tr>
        <tr>
            <td><p class="bold">12. Đối tượng, phạm vi nghiên cứu:</p></td>
        </tr>
         <tr>
            <td><p>12.1 Đối tượng nghiên cứu:</p></td>
        </tr>
        <tr>
            <td><p>12.2. Phạm vi nghiên cứu:</p></td>
        </tr>
        <tr>
            <td><p class="bold">13. Cách tiếp cận, phương pháp nghiên cứu:</p></td>
        </tr>
        <tr>
            <td><p>13.1. Cách tiếp cận:</p></td>
        </tr>
        <tr>
            <td><p>13.2. Phương pháp nghiên cứu:</p></td>
        </tr>
        <tr>
            <td><p class="bold">14. Nội dung nghiên cứu và tiến độ thực hiện:</p></td>
        </tr>
        <tr>
            <td><p>14.1. Nội dung nghiên cứu <b><i>(trình bày dưới dạng đề cương nghiên cứu chi tiết):</i></b></p></td>
        </tr>
        <tr>
            <td><p>14.2. Tiến độ thực hiện</p>
                <table width="100%" border="1" style="border-collapse:collapse">
                    <tr>
                        <th align="center">TT</th>
                        <th align="center">Các nội dung, <br>công việc thực hiện</th>
                        <th align="center">Sản phẩm, <br>kết quả</th>
                        <th align="center">Thời gian<br>(bắt đầu-kết thúc)</th>
                        <th align="center">Người <br>thực hiện</th>
                    </tr>
                    <tr>
                        <td>.</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td><p><b>15. Sản phẩm</b> <i>(lựa chọn các loại sản phẩm phù hợp với đề tài):</i></p></td>
        </tr>
        <tr>
            <td><p>15.1. Sản phẩm khoa học: Sách chuyên khảo, Sách tham khảo, Giáo trình, Bài báo đăng tạp chí nước ngoài, Bài báo đăng tạp chí trong nước, Bài đăng kỷ yếu hội nghị, hội thảo cấp…</p></td>
        </tr>
        <tr>
            <td><p>15.2. Sản phẩm nghiên cứu phục vụ đào tạo: Đại học; cao học.</p></td>
        </tr>
        <tr>
            <td><p>15.3. Các sản phẩm khác</p></td>
        </tr>
        <tr>
            <td><p><b>16. Hiệu quả</b><i> (giáo dục và đào tạo, kinh tế - xã hội)</i></p></td>
        </tr>
        <tr>
            <td><p><b>17. Phương thức chuyển giao kết quả nghiên cứu và địa chỉ ứng dụng</b></p></td>
        </tr>
        <tr>
            <td>
                <p><b>18. Kinh phí thực hiện đề tài </b></p>
                <table width="100%" border="1" style="border-collapse:collapse">
                    <tr>
                        <th align="center">TT</th>
                        <th align="center">Nội dung <br>các khoản chi</th>
                        <th align="center">Người, cơ quan <br>thực hiện</th>
                        <th align="center">ĐVT</th>
                        <th align="center">Số lượng</th>
                        <th align="center">Đơn giá <br>(đ)</th>
                        <th align="center">Thành tiền <br>(đ)</th>
                    </tr>
                    <tr>
                        <td>.</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <b>19. Các đề xuất khác</b> <i> (nếu có):</i>
                @for($i=0; $i<7; $i++)
                <p class="line">&nbsp;</p>
                @endfor
            </td>
        </tr>

    </table>

    <br /><br /><br />
    <table width="100%" id="main_footer" align="center">
        <tr>
            <td style="text-align: center;">
                <p><strong>Đơn vị chủ trì</strong></p>
                <i>(ký, ghi rõ họ tên)</i>
            </td>
            <td>
                <p><strong>Chủ nhiệm đề tài</strong></p>
                <i>(ký, ghi rõ họ tên)</i>
            </td>
        </tr>
    </table>

    <table width="100%" style="margin: 100px 50px 50px 50px;">
        <tr>
            <td>
                <p><b>Ghi chú:</b> - Khi xây dựng thuyết minh, những phần in nghiêng trong ngoặc đơn không đưa vào thuyết minh đề tài.</p>
            </td>
        </tr>

        <tr>
            <td><p>- Mã số đề tài do phòng QLKH&CN ghi và theo dõi.</p></td>
        </tr>
    </table>
</div>
</br></br>

@endsection


<!-- Style CSS trực tiếp -->
@section('inline_style')
#main_footer tr td {
text-align: center;
}
@endsection

