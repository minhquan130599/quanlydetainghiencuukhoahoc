@extends('form.common', ['unit' => $data['unit']->stendv])
@section('title')
BẢN TỰ ĐÁNH GIÁ TÌNH HÌNH THỰC HIỆN VÀ NHỮNG ĐÓNG GÓP MỚI <br>
CỦA ĐỀ TÀI NCKH CẤP {!! $data['topic']->pk_smaldt == 'LDT_01' ? 'KHOA' : 'TRƯỜNG' !!}
@endsection
@section('content')
<div class="main_body_content">
    <table id="main_table">
        <tr>
            <td><b>1. Tên đề tài: </b> {!! $data['topic']->stendt !!}</td>
        </tr>
        <tr>
            <td><b>2. Chủ nhiệm đề tài: </b> {!! $data['leader']->shodem !!}</td>
        </tr>
        <tr>
            <td>
                <b>3. Đơn vị chủ trì đề tài:</b>
                {!! $data['unit']->stendv !!}
            </td>
        </tr>
        <tr>
            <td>
                <b>4. Thời gian thực hiện:</b>
                {!! date('m/Y', $data['topic']->dngaybd) !!} - {!! date('m/Y', $data['topic']->dngaykt) !!}
            </td>
        </tr>
        <tr>
            <td>
                <b>5. Tổng kinh phí thực hiện đề tài:</b>
                ...(Phân bổ kinh phí)
            </td>
        </tr>
        <tr>
            <td>
                <b>6. Tình hình thực hiện đề tài so với hợp đồng:</b>
            </td>
        </tr>

        <tr>
            <td>
                <i>6.1/ Về mức độ hoàn thành khối lượng công việc:</i>
                <p class="line" style="margin-top: 15px"></p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
            </td>
        </tr>

        <tr>
            <td>
                <i>6.2/ Về các yêu cầu khoa học và chỉ tiêu cơ bản của các sản phẩm NCKH:</i>
                <p class="line" style="margin-top: 15px"></p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
            </td>
        </tr>

        <tr>
            <td>
                <i>6.3/ Về tiến độ thực hiện:</i>
                <p class="line" style="margin-top: 15px"></p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
            </td>
        </tr>
        <tr>
            <td>
                <b>7. Về những đóng góp mới của đề tài:</b>
            </td>
        </tr>
        <tr>
            <td>
                Trên cơ sở so sánh với những thông tin đã được công bố trên các ấn phẩm đến thời điểm kết thúc đề tài, đề tài có những điểm mới sau đây:

            </td>
        </tr>
        <tr>
            <td>
                <i>7.1/ Về giải pháp khoa học - công nghệ:</i>
                <p class="line" style="margin-top: 15px"></p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
            </td>
        </tr>

        <tr>
            <td>
                <i>7.2/ Về phương pháp nghiên cứu:</i>
                <p class="line" style="margin-top: 15px"></p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
            </td>
        </tr>

        <tr>
            <td>
                <i>7.3/ Những đóng góp mới khác:</i>
                <p class="line" style="margin-top: 15px"></p><!-- /.line --> <br />
                <p class="line">&nbsp;</p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
            </td>
        </tr>
    </table>
</div>
</br></br>
<table width="100%" id="main_footer" align="center">
    <tr>
        <td style="text-align: center;">

        </td>
        <td>

        </td>
        <td style="float: right">
            <p>CHỦ NHIỆM ĐỀ TÀI</p>
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