@extends('form.common', ['unit' => $data['unit']->stendv])
@section('title')
    CÔNG VĂN ĐỀ NGHỊ NGHIỆM THU ĐỀ TÀI NGHIÊN CỨU KHOA HỌC
@endsection
@section('content')
<div class="main_body_content">
    <table id="main_table">
        <tr>
            <td style="padding-left: 30px;">Kính gửi:</td>
        </tr>
        <tr>

            <td><br /><p class="line"></p><!-- /.line --></td>
        </tr>
        <tr>
            <td>
             <br>
                Căn cứ hướng dẫn số ................... của Hiệu trưởng quy định về việc
                đánh giá, nghiệm thu kết quả thực hiện nhiện vụ NCKH cấp {!! $data['topic']->pk_smaldt == 'LDT_01' ? 'Khoa' : 'Trường' !!}
            </td>
        </tr>
        <tr>
            <td>
                <span class="p60"></span><i>{!! $data['unit']->stendv !!}</i> đề nghị
                ............................................................. xem xét và tổ chức đánh giá, nghiệm thu cấp Trường kết quả
                thực hiện đề tài NCKH sau:
            </td>
        </tr>
        <tr>
            <td class="p60">
                <span class="p60">Tên đề tài:</span>
                {!! $data['topic']->stendt !!}
            </td>
        </tr>

        <tr>
            <td class="p60">
                <span class="p60">Hợp đồng số:</span>
                {!! $data['contract']->ssohieu !!}
            </td>
        </tr>

        <tr>
            <td class="p60">
                <span class="p60">Thời gian thực hiện theo hợp đồng: từ {!! $data['contract']->dngaylap !!} đến nay</span>
            </td>
        </tr>

        <tr>
            <td class="p60">
                <span class="p60">Thời gian được điều chỉnh, gia hạn <i>(nếu có)</i> đến:</span>
            </td>
        </tr>

        <tr>
            <td class="p60">
                <span class="p60">Chủ nhiệm đề tài:</span>
                {!! $data['leader']->shodem !!}
            </td>
        </tr>

        <tr>
            <td>
                <span class="p60">Kèm theo công văn này là hồ sơ đánh giá nghiệm thu, gồm:</span>
            </td>
        </tr>
        <tr>
            <td>
                <span class="p60">1. Báo cáo khoa học của đề tài.</span>
            </td>
        </tr>
        <tr>
            <td>
                <span class="p60">2. Ấn phẩm đã công bố, xuất bản trong quá trình thực hiện đề tài.</span>
            </td>
        </tr>
        <tr>
            <td>
                <span class="p60">3. Hợp đồng khoa học đã được ký kết với Học Viện.</span>
            </td>
        </tr>

        <tr>
            <td>
                <span class="p60">4. Bản tự đánh giá về tình hình thực hiện đề tài(Theo mẫu hướng dẫn tại phụ lục số 01 kèm theo hướng dẫn này).</span>
            </td>
        </tr>

        <tr>
            <td>
                <span class="p60">5. Báo cáo tổ chức thực hiện đề tài.</span>
            </td>
        </tr>

        <tr>
            <td>
                <span class="p60">6. Biên bản kiểm tra định kỳ tình hình triển khai thực hiện đề tài <i>(nếu có)</i>.</span>
            </td>
        </tr>

        <tr>
            <td>
                <span class="p60">7. Văn bản liên quan đến việc tổ chức thực hiện đề tài <i>(nếu có)</i>.</span>
            </td>
        </tr>

        <tr>
            <td>
                <span class="p60">8. Các văn bản xác nhận và tài liệu liên quan đến việc công bố, xuất bản, tiếp nhận, sử dụng kết quả nghiên cứu của đề tài.</span>
            </td>
        </tr>

        <tr>
            <td>
                <span class="p60">9. Các tài liệu khác <i>(nếu có)</i>.</span>
            </td>
        </tr>

        <tr>
            <td>
                <span class="p60">Số lượng hồ sơ gồm:</span>
            </td>
        </tr>

        <tr>
            <td>
                <span class="p60">- 01 bộ <i>(bản gốc)</i> đầy đủ tài liệu kể trên.</span>
            </td>
        </tr>

        <tr>
            <td>
                <span class="p60">- 01 bộ bản điện tử về các file báo cáo <i>(dạng PDF, không cai đặt bảo mật)</i></span>
            </td>
        </tr>

        <tr>
            <td>
                <span>Đề nghị ..................................... <i>(Bộ chủ trì nhiệm vụ)</i> xem xét và tổ chức đánh giá, nghiệm thu kết quả nhiệm vụ.</span>
            </td>
        </tr>


    </table>
</div>
</br></br>
<table width="100%" id="main_footer" align="center">
    <tr>
        <td>
            <p><b>Nơi nhận:</b></p>
            <p>- Như trên;</p>
            <p>- ......</p>
        </td>

        <td style="float: right;">
            <strong>THỦ TRƯỞNG ĐƠN VỊ CHỦ TRÌ ĐỀ TÀI</strong>
            <p><i>(Ký và ghi rõ họ tên)</i></p>
        </td>
    </tr>
</table>
@endsection

<!-- Style CSS trực tiếp -->
@section('inline_style')
#main_footer tr td {
text-align: center;
}

.p60 {
    padding-left: 60px;
}
@endsection