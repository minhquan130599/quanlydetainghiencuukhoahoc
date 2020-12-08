@extends('form.common', ['unit' => $data['unit']->stendv])
@section('title')
PHIẾU ĐĂNG KÝ ĐỀ TÀI NGHIÊN CỨU KHOA HỌC CỦA GIẢNG VIÊN <br>
NĂM HỌC {!! date('Y', time()) - 1 !!} - {!! date('Y', time()) !!}
@endsection
@section('content')
<div class="main_body_content">
    <table border="1" style="border-collapse:collapse" id="main_table">
        <tr>
            <td colspan="2"><b>1. TÊN ĐỀ TÀI: </b> {{ $data['topic']->stendt }}</td>
        </tr>
        <tr>
            <td><b>2. CẤP ĐỀ NGHỊ QUẢN LÝ:</b> Cấp cơ sở/HỌC VIỆN KỸ THUẬT MẬT MÃ</td>
            <td><b>Mã số: </b> {{ $data['topic']->smasodetai }}</td>
        </tr>
        <tr>
            <td colspan="2">
                <b>3. ĐƠN VỊ CHỦ TRÌ:</b>
                <p>Tên cơ quan: {!! $data['unit']->stendv !!}</p>
                <p>Địa chỉ: {{ $data['unit']->sdiachi }}</p>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <b>4. CHỦ NHIỆM ĐỀ TÀI/NGHIÊN CỨU VIÊN CHÍNH:</b>
                <p>Họ và tên: {{ $data['leader']->shodem }}</p>
                <p>Học vị: {{ $data['leader']->stenhv }}</p>
                <p>Chức danh khoa học: </p>
                <p>Điện thoại: {{ $data['leader']->sdienthoai }}</p>
                <p>Email: {{ $data['leader']->semail }}</p>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <b>5. THỜI GIAN DỰ KIẾN TIẾN HÀNH NGHIÊN CỨU:</b>
                <p>Bắt đầu: ngày {{ date('d', $data['topic']->dngaybd) }} tháng {{ date('m', $data['topic']->dngaybd) }} năm {{ date('Y', $data['topic']->dngaybd) }}</p>
                <p>Kết thúc: ngày {{ date('d', $data['topic']->dngaykt) }} tháng {{ date('m', $data['topic']->dngaykt) }} năm {{ date('Y', $data['topic']->dngaykt) }}</p>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <b>6. MỤC TIÊU CỦA ĐỀ TÀI:</b>
                <!-- <p>Mục tiêu chung: {!! $data['topic']->smuctieu !!}</p>
                <p>Mục tiêu cụ thể:</p> -->
                {!! $data['topic']->smuctieu !!}
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <b>7. NỘI DUNG CHÍNH</b>
                {!! $data['topic']->snoidungdaicuong !!}
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <b>8. DỰ KIẾN KẾT QUẢ ĐẠT ĐƯỢC:</b>
                {!! $data['topic']->ssanpham !!}
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <b>9. KINH PHÍ DỰ KIẾN CHO NGHIÊN CỨU:</b>
                {!! number_format($data['topic']->fcptong, 0, '', '.') !!} (đồng)
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <b>10. THÀNH VIÊN THAM GIA ĐỀ TÀI</b>
                <i>(Họ tên, học hàm, học vị, nhiệm vụ chuyên môn, thời gian tham gia cần thiết cho đề tài)</i>

                @forelse ($data['member'] AS $k => $member)
                    <p>{{ $k + 1 }}. {{ $member->shocvan }} - {{ $member->svaitro }}</p>
                    @empty
                    <p class="bold">
                        <font color="red">Không có dữ liệu thành viên đề tài. Vui lòng cập nhật thành viên tham gia đề tài này.</font>
                    </p>
                @endforelse
            </td>
        </tr>
    </table>
</div>
</br>
<table width="100%" id="main_footer" align="center">
    <tr>
        <td style="text-align: center;">
            <p>Ngày….tháng….năm …..</p>
            <strong>CHỦ NHIỆM ĐỀ TÀI</strong>
            <p>(Ký và ghi rõ họ tên)</p>
        </td>
        <td>
            <p>Ngày….tháng….năm …..</p>
            <strong>TRƯỞNG KHOA</strong>
            <p>(Ký và ghi rõ họ tên)</p>
        </td>
        <td>
            <p>Ngày….tháng….năm …..</p>
            <strong>HIỆU TRƯỞNG</strong>
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