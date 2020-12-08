@extends('form.common', ['unit' => $data['unit']->stendv])
@section('title', 'ĐƠN XIN RÚT ĐỀ TÀI NGHIÊN CỨU KHOA HỌC')
@section('content')
<div class="main_body_content">
    <table id="main_table" width="100%">
        <tr>
            <td><b>Kính gửi: </td></b>
            <td><b>Ban Giám hiệu HỌC VIỆN KỸ THUẬT MẬT MÃ</td></b>
        </tr>
        <tr>
            <td><b></td></b>
            <td><b>Phòng Nghiên cứu Khoa học &amp; Hợp tác Quốc tế</td></b>
        </tr>
        <tr>
            <td colspan="" ="2">
                Tên tôi là: {!! $data['leader']->shodem !!}
            </td>
        </tr>
        <tr>
            <td colspan="2">
                Chức vụ: Cán bộ, giảng viên, sinh viên – HỌC VIỆN KỸ THUẬT MẬT MÃ
            </td>
        </tr>

        <tr>
            <td colspan="2">
               Trong năm học {!! date('Y', $data['topic']->dngaybd) !!} - {!! (date('Y', $data['topic']->dngaybd) + 1) !!},
               theo sự phân công của {{ $data['topic']->pk_smaldt == 'LDT_01' ? 'Khoa' : 'nhà Trường'}},
               tôi đã đăng ký thực hiện đề tài NCKH cấp {{ $data['topic']->pk_smaldt == 'LDT_01' ? 'Khoa' : 'Trường'}} <em>“{!! $data['topic']->stendt !!}”</em>
               theo quyết định số {!! $data['expertise'][0]->squyetdinh !!}/QĐ-ĐN ngày {!! $data['expertise'][0]->dngaylamviec !!}
               và hợp đồng số {!! $data['contract']->ssohieu !!}/HĐ-ĐN ngày {!! $data['contract']->dngaylap !!}
               . Tuy nhiên, trong quá trình thực hiện,
               tôi nhận thấy không đủ khả năng thực hiện
               và hoàn thành đề tài vì những lý do sau:
            </td>
        </tr>

        <tr>
            <td colspan="2">
                +)……………………………………………………………………………………………………… <br>
                +)……………………………………………………………………………………………………… <br>
                +)……………………………………………………………………………………………………… <br>
                +)……………………………………………………………………………………………………… <br>
                +)………………………………………………………………………………………………………
            </td>
        </tr>

        <tr>
            <td colspan="2">
               Vì vậy, tôi viết đơn này kính đề nghị Ban Giám hiệu, Phòng NCKH & HTQT xem xét và cho phép tôi được rút đề tài NCKH.
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
                <strong>Ý KIẾN CỦA HIỆU TRƯỞNG</strong>
            </td>
            <td>
                <strong>Ý KIẾN CỦA TRƯỞNG KHOA</strong>
            </td>
            <td>
                <strong>CHỦ NHIỆM ĐỀ TÀI</strong>
            </td>
        </tr>
    </table> <br /><br />
</div>
</br></br>

@endsection


<!-- Style CSS trực tiếp -->
@section('inline_style')
    #main_footer tr td {
    text-align: center;
    }
@endsection

