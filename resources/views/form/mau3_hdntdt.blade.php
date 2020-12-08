@extends('form.common', ['unit' => $data['unit']->stendv])
@section('title')
ĐƠN XIN GIA HẠN ĐỀ TÀI NCKH CẤP {!! $data['topic']->pk_smaldt == 'LDT_01' ? 'KHOA' : 'TRƯỜNG' !!}
@endsection
@section('content')
<div class="main_body_content">
    <table id="main_table" width="100%">
        <tr>
            <td><u>Kính gửi:</u></td></b>
            <td><i>- Ban Giám Hiệu</i></td>
        </tr>
        <tr>
            <td><b></td></b>
            <td><i>- Phòng Quản lý Khoa học &amp; Hợp tác quốc tế</i></td>
        </tr>

        <tr>
            <td colspan="2">
                Họ tên người xin ra hạn: {!! $data['leader']->shodem !!}
            </td>
        </tr>

        <tr>
            <td colspan="2">
                Tên đề tài: {!! $data['topic']->stendt !!}
            </td>
        </tr>
        <tr>
            <td colspan="2">
                Thời gian gia hạn từ: {{ date('d/m/Y', strtotime($data['giahan']->updated_at)) }} đến {{ $data['giahan']->dngayrahan }}
            </td>
        </tr>

        <tr>
            <td colspan="2">
                Nội dung gia hạn: {!! $data['giahan']->noidung !!}
            </td>
        </tr>

        <tr>
            <td colspan="2">
               Lý do: {!! $data['giahan']->lydo !!}
            </td>
        </tr>

        <tr>
            <td colspan="2">
               Kinh phí chuyển theo phần gia hạn(nếu có):
            </td>
        </tr>
    </table>
</div>
</br></br>
<table width="100%" id="main_footer" align="center">
    <tr>

        <td style="float: right">
            <p><b>THỦ TRƯỞNG ĐƠN VỊ CHỦ TRÌ ĐỀ TÀI</b></p>
            <p>(Ký và ghi rõ họ tên)</p>
        </td>
    </tr>
</table>
@endsection

<!-- Style CSS trực tiếp -->
@section('inline_style')
#main_footer tr td {
text-align: center;
}
@endsection