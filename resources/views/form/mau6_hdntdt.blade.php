@extends('form.common', ['unit' => $data['unit']->stendv])
@section('title')
BIÊN BẢN HỌP HỘI ĐỒNG ĐÁNH GIÁ CẤP ĐƠN VỊ <br>
ĐỀ TÀI NCKH CẤP {{ $data['topic']->pk_smaldt == 'LDT_01' ? 'KHOA' : 'TRƯỜNG' }}
@endsection
@section('content')
<div class="main_body_content">
    <table id="main_table">
        <tr>
            <td colspan="2">1. Tên đề tài: {{ $data['topic']->stendt }}</td>
        </tr>
        <tr>
            <td colspan="2">2. Chủ nhiệm đề tài: {{ $data['leader']->shodem }}</td>
        </tr>

        <tr>
            <td colspan="2">3. Đơn vị chủ trì: {{ $data['unit']->stendv }}</td>
        </tr>


        <tr>
            <td colspan="2">4. Ngày họp: {{ $data['council'][0]->dngaylamviec }} <span style="float: right;">Địa điểm: Phòng QLKH</span></td>
        </tr>

        <tr>
            <td colspan="2">5. Thành viên hội đồng:</td>
        </tr>

        <tr>
            <td>
                <table>
                    @foreach ($data['council'] AS $k => $c)
                    <tr>
                        <td><span class="p60">{{ $k+1 }})</span></td>
                        <td>{{ $c->shodem }}</td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            {{ $c->smota }}
                        </td>
                    </tr>
                    @endforeach
                </table>
            </td>
        </tr>

        <tr>
            <td>&nbsp;&nbsp;&nbsp;- Có mặt:.......... Vắng mặt: ..........</td>
        </tr>

        <tr>
            <td align="justify" width="100%">
                &nbsp;&nbsp;&nbsp;Danh sách vắng mặt:
                <p class="line">&nbsp;</p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
                <p class="line">&nbsp;</p><!-- /.line -->
            </td>
        </tr>

        <tr>
            <td>6. Nội dung:</td>
        </tr>

        <tr>
            <td>&nbsp;&nbsp;&nbsp;- Chủ nhiệm đề tài trình bày tóm tắt đề tài</td>
        </tr>

        <tr>
            <td>&nbsp;&nbsp;&nbsp;- Phản biện đọc bài nhận xét và nêu câu hỏi. (Có bản nhận xét kèm theo)</td>
        </tr>

        <tr>
            <td>&nbsp;&nbsp;&nbsp;- Ý kiến của các thành viên trong hội đồng</td>
        </tr>

        <tr>
            <td>&nbsp;&nbsp;&nbsp;- Hội đồng bỏ phiếu đánh giá và kết luận</td>
        </tr>

        <tr>
            <td>
                <b>7. Điểm đánh giá theo các nội dung sau:</b>
            </td>
        </tr>

        <tr>
            <td>
                <b class="p60"><i>1) Những nội dung cần sửa chữa, bổ sung, hoàn chỉnh hay làm rõ</i></b>
            </td>
        </tr>

        <tr>
            <table width="100%" border="1" style="border-collapse:collapse" class="bangdanhgia" id="main_table">
                <tr>
                    <th width="6%">TT</th>
                    <th width="30%">Nội dung</th>
                    <th>
                        Yêu cầu cần sửa đổi, bổ sung, làm rõ
                        <p><i>(Ghi chi tiết yêu cầu)</i></p>
                    </th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>Mục tiêu</td>
                    <td style="height: 100px;"></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Nội dung</td>
                    <td style="height: 100px;"></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Phương pháp nghiên cứu</td>
                    <td style="height: 100px;"></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Sản phẩm nghiên cứu</td>
                    <td style="height: 100px;"></td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>Giá trị khoa học và <br>ứng dụng của đề tài</td>
                    <td style="height: 100px;"></td>
                </tr>
            </table>
        </tr>

        <tr>
            <td>
                <b class="p60"><i>2) Ý kiến khác</i></b>
            </td>
        </tr>

        <tr>
            <td>
                @for($i=0; $i<9; $i++)
                    <p class="line">&nbsp;</p><!-- /.line -->
                @endfor
            </td>
        </tr>

        <tr>
            <td>
                <b class="p60"><i>3) Điểm đánh giá</i></b>
            </td>
        </tr>

        <tr>
            <td>
                <p>Tổng số đầu điểm:.................................. trong đó: - hợp lệ: ...... &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - không hợp lệ:......</p>
                <p>Tổng số điểm hợp lệ:.............................. <i>(điểm hợp lệ là điểm đánh giá đúng khung định mức)</i></p>
                <p>Điểm trung bình: ..................................</p>
            </td>
        </tr>

        <tr>
            <td>
                <b class="p60"><i>4) Xếp loại: ............................</i></b>
            </td>
        </tr>

    </table>

    <br /> <br />
    <table width="100%" id="main_footer" align="center">
        <tr>
            <td>
                <p><strong>Thư ký</strong></p>
            </td>

            <td>
                <p><strong>Chủ tịch Hội đồng</strong></p>
            </td>
        </tr>
    </table>

</div>
</br></br>

<script type="text/javascript">
    $(document).ready(function() {
        $('.bangdanhgia tr').find('td:first, td:eq(2)').attr('align', 'center');
    });
</script>
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


