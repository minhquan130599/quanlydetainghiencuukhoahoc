@extends('form.common', ['unit' => $data['unit']->stendv])
@section('title')
    BIÊN BẢN HỌP HỘI ĐỒNG THẨM ĐỊNH ĐỀ CƯƠNG <br>
    ĐỀ TÀI NGHIÊN CỨU KHOA HỌC CẤP CƠ SỞ NĂM HỌC
    {!! date('Y', time()) - 1 !!} - {!! date('Y', time()) !!}
@endsection
@section('content')
<div class="main_body_content">
    <table id="main_table">
        <tr>
            <td>1. Tên đề tài: {{ $data['topic']->stendt }}</td>
        </tr>
        <tr>
            <td>2. Ngày họp: {{ $data['council'][0]->dngaylamviec }}</td>
        </tr>
        <tr>
            <td>
                3. Địa điểm: Phòng gi do, khoa ATTT ,141 Chiến thắng Hà đông, Hà Nội
            </td>
        </tr>
        <tr>
            <td>
                4. Thành viên hội đồng: &nbsp;&nbsp;&nbsp;&nbsp;
                Tổng số: &nbsp;&nbsp;{{ count($data['council']) }}&nbsp;&nbsp;
                Có mặt: &nbsp;&nbsp;<div class="square"></div><!-- /.square -->&nbsp;&nbsp;
                Vắng mặt: &nbsp;&nbsp;<div class="square"></div><!-- /.square -->&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td>6. Khách mời tham dự: {{ $data['council'][0]->sghichu }}</td>
        </tr>
        <tr>
            <td colspan="2">
                7. Kết quả bỏ phiếu đánh giá:
                <table width="100%">
                    <tr>
                        <td>- Số phiếu đánh giá ở mức “Đạt”:</td>
                        <td>Số phiếu đánh giá ở mức “Không đạt”:</td>
                    </tr>

                    <tr>
                        <td>- Đánh giá chung: Đạt &nbsp;&nbsp;<div class="square"></div></td>
                        <td>Không đạt &nbsp;&nbsp;<div class="square"></div></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                8. Kết luận của hội đồng:
            </td>
        </tr>

        <tr>
            <td>
                8.1 Đồng ý đề nghị đưa vào danh mục giao nhiệm vụ thực hiện đề tài NCKH cấp khoa:
                <table>
                    <tr>
                        <td>Đồng ý &nbsp;&nbsp;<div class="square"></div></td>
                        <td>Không đồng ý &nbsp;&nbsp;<div class="square"></div></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                8.2. Các nội dung sửa đổi, bổ sung:
            </td>
        </tr>

        <tr>
            <td>
                9. Ý kiến khác:
                <table width="100%" border="1" style="border-collapse:collapse">
                    <tr>
                        <th>TT</th>
                        <th>Nội dung</th>
                        <th style="width: 250px;">
                            Nội dung sửa đổi, bổ sung
                            <p style="font-weight: normal"><i>(ghi chi tiết yêu cầu)</i></p>
                        </th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Tên đề tài</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Mục tiêu</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Nội dung nghiên cứu</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Sản phẩm (sản phẩm khoa học, sản phẩm nghiên cứu phục vụ đào tạo, sản phẩm ứng dụng, sản phẩm khác) </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Kinh phí</td>
                        <td></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                9. Ý kiến khác:
                @for($i=0; $i<9; $i++)
                <p class="line">&nbsp;</p>
                @endfor


            </td>
        </tr>
    </table>

    <table width="100%" id="main_footer" align="center">
        <tr>
            <td style="text-align: center;">
                <p><strong>Chủ tịch hội đồng </strong></p>
                <i>(ký, ghi rõ họ tên)</i>
            </td>
            <td>
                <p><strong>Thư ký</strong></p>
                <i>(ký, ghi rõ họ tên)</i>
            </td>
        </tr>
    </table>
</div>
@endsection


<!-- Style CSS trực tiếp -->
@section('inline_style')
#main_footer tr td {
    text-align: center;
}
@endsection

