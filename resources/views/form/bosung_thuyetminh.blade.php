@extends('form.common', ['unit' => $data['unit']->stendv])
@section('title')
    BỔ SUNG THUYẾT  MINH  ĐỀ CƯƠNG ĐỀ  TÀI <br>
    NGHIÊN CỨU KHOA HỌC CẤP KHOA NĂM HỌC
    {!! date('Y', time()) - 1 !!} - {!! date('Y', time()) !!}
@endsection
@section('content')
<div class="main_body_content">
    <table id="main_table">
        <tr>
            <td>
                <b>1. Tên đề tài: </b>
                {{ $data['topic']->stendt }}
            </td>
        </tr>
        <tr>
            <td>
                <b>2. Mã số:</b>
                {{ $data['topic']->smasodetai }}
            </td>
        </tr>
        <tr>
            <td>
                <b>3. Thời gian thực hiện:</b>
                {{ date('m/Y', $data['topic']->dngaybd) }} đến {{ date('m/Y', $data['topic']->dngaykt) }}
            </td>
        </tr>
        <tr>
            <td>
                <b>4. Đơn vị chủ trì đề tài</b>
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
            <td>
                <b>6. Cách tiếp cận, phương pháp nghiên cứu</b>
                <table width="100%">
                    <!-- <tr>
                        <td>6.1 Cách tiếp cận</td>
                    </tr>

                    <tr>
                        <td>6.2 Phương pháp nghiên cứu</td>
                    </tr> -->

                    <tr>
                        <td>{!! $data['topic']->sphuongphap !!}</td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <b>7. Tiến độ thực hiện</b>
                <table width="100%">
                    <tr>
                        <td>7.1 Tiến độ thực hiện</td>
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
                    </tr>
                </table>
            </td>
        </tr>

        <tr>
            <td>
                <b>8. Dự trù kinh phí và trang thiết bị thực hiện đề tài</b>
                <table width="100%">
                    <tr>
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
                    </tr>
                </table> <br />

                <table width="100%">
                    <tr>
                        <table width="100%" border="1" style="border-collapse:collapse">
                            <tr>
                                <th align="center">TT</th>
                                <th align="center">Trang thiết bị phục vụ cho nghiên cứu</th>
                                <th align="center">Người, cơ quan thực hiện</th>
                                <th align="center">Số lượng</th>
                            </tr>
                            <tr>
                                <td>.</td>
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
                <b>9. Các đề xuất khác (nếu có)</b>
                @for($i=0; $i<7; $i++)
                <p class="line">&nbsp;</p>
                @endfor
            </td>
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

@section('page2')
<page size="A4">
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
</page>
@endsection

