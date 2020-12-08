@extends('master.main_admin')
@section('title', 'Đăng ký bảo vệ đề tài')
@section('content-header')
<section class="content-header">
    <h1>
        Triển khai
        <small>Đăng ký bảo vệ đề tài</small>
    </h1>
    <ol class="breadcrumb">
        <li>Triển khai</li>
        <li class="active">Đăng ký bảo vệ đề tài</li>
    </ol>
</section>
@endsection


@section('content')
<section class="content">
    <div class="nav-tabs-custom">
        <ul class="nav nav-tabs">
            <li class="active"><a href="#tab_1" data-toggle="tab">Đề tài đã đăng ký bảo vệ</a></li>
            <li><a href="#tab_2" data-toggle="tab">Đề tài đủ điều kiện bảo vệ</a></li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="tab_1">
                <div class="table-responsives" style="clear: right;">
                    <center class="text-success text-bold">Có {{ count($data['paginatorContent']) }} đề tài đăng ký bảo vệ đề tài NCKH</center>
                    <table class="table table-hover table-bordered datatatable">
                        <thead>
                            <tr class="active">
                                <th class="text-center">#</th>
                                <th class="text-center">Đề tài khoa học</th>
                                <th class="text-center">Mã số đề tài</th>
                                <th class="text-center">Loại đề tài</th>
                                <th class="text-center">Chủ nhiệm</th>
                                <th class="text-center">Thời gian đăng ký</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if (!empty ($data['paginatorContent']))
                            {{ \Carbon\Carbon::setLocale('vi') }}
                            @foreach ($data['paginatorContent'] AS $key => $val)
                            <tr>
                                <td class="text-center">{{ $key+1 }}</td>
                                <td>{{ $val->stendt }}</td>
                                <td>{{ $val->smasodetai }}</td>
                                <td>{{ $val->stenldt }}</td>
                                <td>{{ $val->shocvan}}</td>
                                <td>{!! \Carbon\Carbon::createFromTimeStamp(strtotime($val->created_at))->diffForHumans() !!}</td>
                            </tr>
                            @endforeach
                            @else
                            Không có dữ liệu
                            @endif
                        </tbody>
                    </table>
                </div>
                <!--  /.table-responsive -->
                {{-- @include('blocks.box_footer', ['data' => $data]) --}}
            </div>
            <!-- /.pane 1 -->
            <div class="tab-pane" id="tab_2">
                @if (!empty ($data['registration']))
                <form action="{{ route('admin.registration_protect.store') }}" method="POST" autocomplete="off">
                    <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                    <div class="table-responsives">
                        <table class="table table-hover table-bordered datatatable">
                            <thead>
                                <tr class="active">
                                    <th class="text-center">#</th>
                                    <th class="text-center">Đề tài khoa học</th>
                                    <th class="text-center">Mã số đề tài</th>
                                    <th class="text-center">Chủ nhiệm <br>đề tài</th>
                                    <th class="text-center">Hội đồng khảo sát</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data['registration'] AS $key => $val)
                                <tr>
                                    <td class="text-center">
                                        <input type="checkbox" name="check[]" class="iCheck choose" value="{{ $val->pk_imadt }}" />
                                    </td>
                                    <td>{{ $val->stendt }}</td>
                                    <td>{{ $val->smasodetai}}</td>
                                    <td>{{ $val->shocvan }}</td>
                                    <td>{{ $val->stenhd }}</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    <!--  /.box-footer -->
                    <button type="submit" name="submit" class="btn btn-primary">Đăng ký bảo vệ</button>
            </div>
            <!--  /.table-responsive -->
            </form>
            @else
            Không có dữ liệu
            @endif
        </div>
        <!-- /.tab-panel 2 -->
    </div>
    <!-- /.tab-content -->
    </div><!-- /.tab-custom -->
</section>
<!-- /.content -->
@endsection


@section('style')
     <link rel="stylesheet" href="/plugins/datatables/dataTables.bootstrap.css">
     <link rel="stylesheet" href="/plugins/iCheck/all.css">
@endsection

@section('script')
<script src="/plugins/iCheck/icheck.min.js"></script>
<!-- Datatable -->
<script src="/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/plugins/datatables/dataTables.bootstrap.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        var count = 0;
        $('button[name="submit"]').click(function () {
            $('.choose:checked').each(function () {
                count++;
            });

            if (count == 0) {
                showMessage('Bạn chưa chọn đề tài đăng ký bảo vệ', 'error');
                return false;
            }
        });

        $('.datatatable').DataTable();
    });
</script>
@endsection


@section('style')
<style type="text/css">
    .dataTables_filter, .dataTables_paginate, .paging_simple_numbers {
    float: right;
    }
</style>
@endsection