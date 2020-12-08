@extends('master.main_admin')
@section('title', 'In biểu mẫu')
@section('content-header')
<section class="content-header">
    <h1>
        In biểu mẫu
    </h1>
    <ol class="breadcrumb">
        <li class="active">In biểu mẫu</li>
    </ol>
</section>
@endsection <!-- /.content-header -->
@section('content')
<section class="content">
    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">In biểu mẫu</h3>
            <small class="help-block">Sau khi bấm nút trang biểu mẫu hiện ra, bấm tiếp tổ hợp phím Ctrl + P để chọn khổ giấy và bấm In để hoàn tất.</small>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <div class="row">
                <div class="col-sm-4">
                    <label>Loại đề tài <span class="text-red">*</span></label>
                    <select name="txtLoaidetai" id="input" class="form-control select2">
                        <option value="">--Chọn loại đề tài--</option>
                        @foreach ($data['topic_category'] AS $c)
                        <option value="{{ $c['pk_smaldt'] }}">{{ $c['stenldt'] }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="col-sm-8">
                    <label>Đề tài <span class="text-red">*</span></label>
                    <select name="txtDetai" id="select2" class="form-control select2">
                        <option value="">--Chọn đề tài--</option>
                    </select>

                    <strong id="status" class="text-green"></strong>
                </div>
            </div>
            <hr class="row">
            <div class="panel panel-info sr-only" id="form_list">
                <div class="panel-heading"><strong>Danh sách biểu mẫu NCKH</strong></div>
                <div class="panel-body">
                    <ol>
                        <li>
                            <div class="radio">
                                <label>
                                    <a href="{{ route('admin.form.phieudangky') }}" data-http="{{ route('admin.form.phieudangky') }}" target="_blank">Phiếu đăng ký đề tài NCKH của giảng viên</a>
                                </label>
                            </div>
                        </li>

                        <li>
                            <div class="radio">
                                <label>
                                    <a href="{{ route('admin.form.phieudanhgiadecuong') }}" data-http="{{ route('admin.form.phieudanhgiadecuong') }}" target="_blank">Phiếu đánh giá đề cương đề tài NCKH cấp Khoa</a>
                                </label>
                            </div>
                        </li>

                        <li>
                            <div class="radio">
                                <label>
                                    <a href="{{ route('admin.form.bbhophdtd') }}" data-http="{{ route('admin.form.bbhophdtd') }}" target="_blank">Biên bản họp hội đồng thẩm định đề cương đề tài NCKH cấp cơ sở</a>
                                </label>
                            </div>
                        </li>

                        <li>
                            <div class="radio">
                                <label>
                                    <a href="{{ route('admin.form.tmdecuongdt') }}" data-http="{{ route('admin.form.tmdecuongdt') }}" target="_blank">Thuyết minh đề cương đề tài NCKH cấp Khoa</a>
                                </label>
                            </div>
                        </li>

                        <li>
                            <div class="radio">
                                <label>
                                    <a href="{{ route('admin.form.bctd') }}" data-http="{{ route('admin.form.bctd') }}" target="_blank">Báo cáo tiến độ thực hiện đề tài NCKH</a>
                                </label>
                            </div>
                        </li>

                        <li>
                            <div class="radio">
                                <label>
                                    <a href="{{ route('admin.form.bstm') }}" data-http="{{ route('admin.form.bstm') }}" target="_blank">Bổ sung thuyết minh đề cương đề tài NCKH cấp Khoa</a>
                                </label>
                            </div>
                        </li>

                        <li>
                            <div class="radio">
                                <label>
                                    <a href="{{ route('admin.form.thanhtoan') }}" data-http="{{ route('admin.form.thanhtoan') }}" target="_blank">Đề nghị thanh toán đề tài NCKH cấp Khoa</a>
                                </label>
                            </div>
                        </li>

                        <li>
                            <div class="radio">
                                <label>
                                    <a href="{{ route('admin.form.rutdetai') }}" data-http="{{ route('admin.form.rutdetai') }}" target="_blank">Đơn xin rút đề tài NCKH</a>
                                </label>
                            </div>
                        </li>

                        <li>
                            <div class="radio">
                                <label>
                                    <a href="{{ route('admin.form.mau1') }}" data-http="{{ route('admin.form.mau1') }}" target="_blank">Bản tự đánh giá về tình hình thực hiện và những đóng góp mới của đề tài nckh cấp trường</a>
                                </label>
                            </div>
                        </li>

                        <li>
                            <div class="radio">
                                <label>
                                    <a href="{{ route('admin.form.mau2hdntdt') }}" data-http="{{ route('admin.form.mau2hdntdt') }}" target="_blank">Công văn đề nghị nghiệm thu đề tài NCKH</a>
                                </label>
                            </div>
                        </li>
                        <li>
                            <div class="radio">
                                <label>
                                    <a href="{{ route('admin.form.giahan') }}" data-http="{{ route('admin.form.giahan') }}" target="_blank">Đơn xin gia hạn thời gian thực hiện đề tài NCKH cấp Trường</a>
                                </label>
                            </div>
                        </li>
                        <li>
                            <div class="radio">
                                <label>
                                    <a href="{{ route('admin.form.phieuphanbien') }}" data-http="{{ route('admin.form.phieuphanbien') }}" target="_blank">Phiếu nhận xét đề tài NCKH (dành cho người phản biện)</a>
                                </label>
                            </div>
                        </li>
                        <li>
                            <div class="radio">
                                <label>
                                    <a href="{{ route('admin.form.mau5hdntdt') }}" data-http="{{ route('admin.form.mau5hdntdt') }}">Phiếu đánh giá nghiệm thu đề tài NCKH cấp Trường</a>
                                </label>
                            </div>
                        </li>
                        <li>
                            <div class="radio">
                                <label>
                                    <a href="{{ route('admin.form.mau6hdntdt') }}" data-http="{{ route('admin.form.mau6hdntdt') }}">Biên bản họp hội đồng đánh giá cấp đơn vị đề tài NCKH cấp Trường</a>
                                </label>
                            </div>
                        </li>
                    </ol>
                </div>
            </div>
        </div>
        <!--  /.box-body -->
    </div>
    <!-- /.box -->
</section>
@endsection <!-- /.content -->

@section('style')
<link rel="stylesheet" href="/plugins/bootstrap-sweetalert/dist/sweetalert.css" />
@endsection

@section('script')
<script type="text/javascript" src="/app/js/form.js"></script>
<script type="text/javascript" src="/plugins/bootstrap-sweetalert/dist/sweetalert.min.js"></script>
@endsection