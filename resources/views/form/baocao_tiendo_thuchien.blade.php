@extends('form.common', ['unit' => $data['unit']->stendv])
@section('title')
    BÁO CÁO TIẾN ĐỘ THỰC HIỆN ĐỀ TÀI <br>
    NGHIÊN CỨU KHOA HỌC CẤP KHOA NĂM  {!! date('Y', time()) !!}
@endsection
@section('content')
<div class="main_body_content">
    <table id="main_table">
        <tr>
            <td>
                <b>I. Tên đề tài:</b>
                {{ $data['topic']->stendt }}
            </td>
        </tr>
        <tr>
            <td><b>II. Thành viên tham gia đề tài :</td></b>
        </tr>
        <tr>
            <td>
                Chủ nhiệm đề tài: {{ $data['leader']->shocvan }}
            </td>
        </tr>
        <tr>
            <td>
                Thành viên đề tài:
                @foreach ($data['member'] AS $member)
                <p style="margin-left: 50px;">{{ $member->shocvan }}</p>
                @endforeach
            </td>
        </tr>

        <tr>
            <td >
                <b>III. Kết quả nghiên cứu cụ thể đã hoàn thành từ khi triển khai đến khi báo cáo</b>
                <table width="100%" border="1" style="border-collapse:collapse">
                    <tr>
                        <th>TT</th>
                        <th>Thời gian</th>
                        <th>Nội dung thực hiện</th>
                        <th>Kết quả</th>
                    </tr>

                    @forelse ($data['survey'] AS $k => $s)
                    <tr>
                        <td align="center">{{ $k+1 }}</td>
                        <td>{{ $s->dngaybc }}</td>
                        <td align="justify">{!! $s-> snoidung !!}</td>
                        <td>{{ $s->bketqua == 1 ? 'Đạt' : 'Không đạt' }}</td>
                    </tr>
                    @empty
                        Đề tài này chưa có nội dung báo cáo tiến độ
                    @endforelse
                </table>
            </td>
        </tr>

        <tr>
            <td>
                <b>IV. Nhận xét và đánh giá kết quả đạt được về nội dung tiến độ: </b>
                @for ($i=0; $i<9; $i++)
                    <p>
                        ............................................................................................................................................................................
                    </p><!-- /.line -->
                @endfor
            </td>
        </tr>

        <tr>
            <td>
                <b>V. Dự kiến công việc thời gian tới: </b>
                @for ($i=0; $i<9; $i++)
                    <p>
                        ............................................................................................................................................................................
                    </p><!-- /.line -->
                @endfor
            </td>
        </tr>

        <tr>
            <td>
                <b>VI. Đề xuất của nhóm nghiên cứu: </b>
                @for ($i=0; $i<9; $i++)
                    <p>
                        ............................................................................................................................................................................
                    </p><!-- /.line -->
                @endfor
            </td>
        </tr>

        <tr>
            <td>
                <b>VII. Kết luận: </b>
                @for ($i=0; $i<9; $i++)
                    <p>
                        ............................................................................................................................................................................
                    </p><!-- /.line -->
                @endfor
            </td>
        </tr>

        <tr>
            <table width="100%" id="main_footer" align="center">
                <tr>
                    <td>
                        <p>Ngày….tháng….năm …..</p>
                        <strong>Người lập báo cáo</strong>
                        <p>(Ký và ghi rõ họ tên)</p>
                    </td>
                    <td>
                        <p>Ngày….tháng….năm …..</p>
                        <strong>Trưởng đơn vị</strong>
                        <p>(Ký và ghi rõ họ tên)</p>
                    </td>
                </tr>
            </table>
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

