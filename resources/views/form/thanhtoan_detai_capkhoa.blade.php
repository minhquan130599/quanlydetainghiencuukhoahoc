@extends('form.common', ['unit' => $data['unit']->stendv])
@section('title', 'ĐỀ NGHỊ THANH TOÁN ĐỀ TÀI NCKH CẤP KHOA')
@section('content')
<div class="main_body_content">
    <table id="main_table" width="100%">
        <tr>
            <td><b><u>Kính gửi:</u></td></b>
            <td><b>- Ban Giám hiệu, HỌC VIỆN KỸ THUẬT MẬT MÃ</td></b>
        </tr>
        <tr>
            <td><b></td></b>
            <td><b>- Phòng NCKH &amp; HTQT</td></b>
        </tr>
        <tr>
            <td><b></td></b>
            <td><b>- Phòng Tài chính – Kế toán </td></b>
        </tr>
        <tr>
            <td colspan="2">
                - Căn cứ vào Quyết định số {!! $data['expertise'][0]->squyetdinh !!}/QĐ-ĐN chuẩn y đề tài cấp Khoa năm 2015 và thuyết minh đề cương chi tiết đề tài;
            </td>
        </tr>
        <tr>
            <td colspan="2">
                - Căn cứ vào Hợp đồng NCKH số {!! $data['contract']->ssohieu !!}/HĐ-ĐN ngày 07/12/2015 về việc thực hiện đề tài NCKH cấp Khoa năm 2015;
            </td>
        </tr>

        <tr>
            <td colspan="2">
               Nhóm nghiên cứu đã hoàn thành đề tài <em>“{!! $data['topic']->stendt !!}”</em>
               đúng thời hạn và đã được tổ chức nghiệm thu vào ngày {!! $data['council'][0]->dngaylamviec !!}
               với kết quả đạt loại <em>“{!! $data['xeploai']->stendmxeploai !!}”</em>
               Toàn bộ hồ sơ nghiệm thu và báo cáo kết quả đề tài đã được hoàn thiện
               và gửi phòng NCKH &amp; HTQT
            </td>
        </tr>

        <tr>
            <td colspan="2">
               Vậy kính đề nghị Ban Giám hiệu phê duyệt thanh toán cho nhóm nghiên cứu số tiền .... (ghi bằng chữ) tương đương 150 giờ chuẩn theo quy định tại Điều 1 của Hợp đồng.
            </td>
        </tr>

        <tr>
            <td colspan="2">
               Xin chân thành cảm ơn.
            </td>
        </tr>
    </table>


    <table width="100%" id="main_footer" align="center">
        <tr>
            <td>
                <strong>Chủ trì đề tài</strong>
            </td>
            <td>
                <strong>Trưởng khoa</strong>
            </td>
            <td>
                <strong>PHÒNG NCKH & HTQT</strong>
            </td>
        </tr>
    </table> <br /><br /><br />

    <table width="100%" id="main_footer" align="center">
        <tr>
            <td>
                <strong>PHÒNG TC-KT</strong>
            </td>
            <td>
                <strong>PHÊ DUYỆT CỦA BAN GIÁM HIỆU</strong>
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

