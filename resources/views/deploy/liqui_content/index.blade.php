@extends('master.main_admin')
@section('title', 'Nội dung thanh lý đề tài')
@section('content-header')
  <section class="content-header">
    <h1>
        Triển khai
        <small>Nội dung thanh lý</small>
    </h1>
    <ol class="breadcrumb">
        <li><a>Triển khai</a></li>
        <li>Thanh lý đề tài</li>
        <li class="active">Nội dung &amp; kết quả thanh lý</li>
    </ol>
  </section>
@endsection

@section('content')
	<section class="content">
    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Nội dung &amp; kết quả thanh lý</h3>
            <div class="box-tools">
                <a data-toggle="modal" href='#contractModal' class="btn btn-primary btn-sm" title="Cập nhật nội dung thanh lý">
                    <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>
                    Cập nhật
                </a>
                @include('deploy.liqui_content._form', ['data' => $data])
            </div><!--  /.box-tools -->
        </div><!-- /.box-header -->

        <div class="box-body">
            <div class="search">
                <form action="" method="GET" class="form-horizontal" autocomplete="off">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">Hội đồng</label>
                                    <div class="col-sm-8">
                                        <select name="council" class="form-control select2">
                                            <option value="">Tất cả</option>
                                            @foreach ($data['council'] AS $c)
                                            <option value="{{ $c['pk_imahd'] }}" {{ $data['search_data']['council'] == $c['pk_imahd'] ? 'selected' : null }}>{{ $c['stenhd'] }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <!--  /.col-sm-8 -->
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">Đề tài</label>
                                    <div class="col-sm-8">
                                        <select name="topic" class="form-control select2">
                                           <option value="">Tất cả</option>
                                            @foreach ($data['topic'] AS $topic)
                                            <option value="{{ $topic['pk_imadt'] }}" {{ $data['search_data']['topic'] == $topic['pk_imadt'] ? 'selected' : null }}>{{ $topic['stendt'] }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <!--  /.col-sm-8 -->
                                </div>
                            </div>
                            <!--  /.col-sm-4 -->
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label" title="Ngày báo cáo">Ngày thanh lý</label>
                                    <div class="col-sm-8">
                                        <input type="text" name="report_date" class="form-control datepick"  placeholder="Nhập ngày báo cáo" value="{{ $data['search_data']['report_date'] }}">
                                    </div>
                                    <!--  /.col-sm-8 -->
                                </div>
                                <div class="form-group no-margin">
                                    <button type="submit" class="btn btn-primary" title="Tra cứu kết quả theo tiêu chí">Tìm kiếm</button>
                                    <a href="{{ route('admin.liqui_content.index') }}" class="btn btn-default" title="Hủy bỏ tìm kiếm">Hủy tìm kiếm</a>
                                </div>
                                <!-- /.form-group txt-right -->
                            </div>
                        </div>
                        <!-- /.col-sm-12 -->
                    </div>
                    <!--  /.row -->
                </form>
            </div>
            <!--  /.row -->
            <hr class="row" />


            @if (count ($data['paginatorContent']) > 0)
            <table class="table table-hover table-bordered">
                <thead>
                    <tr class="active">
                        <th>#</th>
                        <th width="40%">Đề tài khoa học</th>
                        <th>Chủ nhiệm</th>
                        <th>Hội đồng thanh lý</th>
                        <th>Ngày thanh lý</th>
                        <th>Lý do</th>
                        <th>Ghi chú</th>
                        <th width="8%">Tác vụ</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($data['paginatorContent'] AS $key => $val)
                    <tr>
                        <td>{{ numeric_order($data['page'], $key, 10) }}</td>
                        <td>{{ $val->stendt }}</td>
                        <td>{{ $val->shocvan }}</td>
                        <td>{{ $val->stenhd }}</td>
                        <td>{{ $val->dngaytl }}</td>
                        <td>{{ $val->slydo }}</td>
                        <td>{{ $val->sghichu }}</td>
                        <td>
                            @if (empty($val->dngaycapgiaycn))
                            <div class="btn-group" role="group">
                                <a class="btn btn-default btn-sm" data-toggle="modal" href='#liquiModal{{$key}}'><span class="glyphicon glyphicon-pencil"></span></a>
                                @include('deploy.liqui_content._modal', [
                                    'item' => $data['paginatorContent'][$key],
                                    'key' => $key
                                ])
                                <form action="{{ route('admin.liqui_content.destroy', $val->pk_imadt) }}" method="POST" style="display: inline">
                                    <button type="button" class="btn btn-default btn-sm" onclick="return confirmDelete(this);"><span class="glyphicon glyphicon-trash"></span></button>
                                </form>
                            </div>
                            @else
                                Đề tài đã chứng nhận
                            @endif
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            @else
                Không có dữ liệu
            @endif
        </div><!--  /.box-body -->

        @include('blocks.box_footerv2', ['data' => $data, 'search_data' => $data['search_data']])
    </div><!-- /.box -->
</section><!-- /.content -->
@endsection

@section('script')
    <script src="/plugins/input-mask/jquery.inputmask.js" type="text/javascript"></script>
    <script src="/plugins/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
    <script src="/plugins/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('label').addClass('control-label');
            $("#datemask, #datemask2").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
        });
    </script>

    <script type="text/javascript" src="/plugins/bootstrap-sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
        function confirmDelete(selector)
        {
            swal({
              title: "Hủy kết quả thanh lý này?",
              text: "Dữ liệu về nội dung thanh lý sẽ được hệ thống hủy bỏ hoàn toàn",
              type: "error",
              showCancelButton: true,
              confirmButtonClass: "btn-danger",
              confirmButtonText: "Xác nhận",
              cancelButtonText: "Đóng",
              closeOnConfirm: true,
              closeOnCancel: true
            },
            function(isConfirm) {
                if (isConfirm) {
                    selector.setAttribute("type", "submit");
                    selector.click();
                }
            });
        }

    </script>
@endsection

@section('style')
<link rel="stylesheet" href="/plugins/bootstrap-sweetalert/dist/sweetalert.css" />
@endsection
