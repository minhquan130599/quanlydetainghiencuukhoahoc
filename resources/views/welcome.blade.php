@extends('master.main_admin')
@section('title', 'Chào mừng cán bộ')
@section('content-header')
  <section class="content-header">
    <h1>Hệ thống</h1>
    <ol class="breadcrumb">
        <li><a href="{{ route('welcome') }}"><i class="fa fa-home" aria-hidden="true"></i> Trang chủ</a></li>
        <li class="active">Chào mừng cán bộ</li>
    </ol>
  </section>
@endsection


@section('content')
    @if (Auth::user()->pk_imanhomcb == 1 || Auth::user()->pk_imanhomcb == 2 || Auth::user()->pk_imanhomcb == 3)
        <div style="padding: 0px 15px 15px">
            <h3 class="text-center">
            Chào mừng  {{ Auth::user()->shodem }} đã đến với hệ thống quản lý NCKH</h3> <br />
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-green glyphicon glyphicon-user"></span>
                        <div class="info-box-content">
                            <span class="info-box-text">Cán bộ quản lý</span>
                            <span class="info-box-number">{{ $data['staff'] }} <small>cán bộ</small></span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-green glyphicon glyphicon-registration-mark"></span>
                        <div class="info-box-content">
                            <span class="info-box-text">Đã đăng ký</span>
                            <span class="info-box-number">{{ $data['topic'] }} <small>đề tài</small></span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <!-- fix for small devices only -->
                <div class="clearfix visible-sm-block"></div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-green glyphicon glyphicon-question-sign"></span>
                        <div class="info-box-content">
                            <span class="info-box-text">Thẩm định</span>
                            <span class="info-box-number">{{ $data['expertise'] }} <small>đề tài</small></span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-green glyphicon glyphicon-bookmark"></span>
                        <div class="info-box-content">
                            <span class="info-box-text">Hợp đồng</span>
                            <span class="info-box-number">{{ $data['contract'] }} <small>hợp đồng</small></span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-green glyphicon glyphicon-edit"></span>
                        <div class="info-box-content">
                            <span class="info-box-text">Đã triển khai</span>
                            <span class="info-box-number">{{ $data['deploy'] }} <small>đề tài</small></span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-green glyphicon glyphicon-check"></span>
                        <div class="info-box-content">
                            <span class="info-box-text">Khảo sát</span>
                            <span class="info-box-number">{{ $data['survey'] }} <small>đề tài</small></span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <!-- fix for small devices only -->
                <div class="clearfix visible-sm-block"></div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-green glyphicon glyphicon-warning-sign"></span>
                        <div class="info-box-content">
                            <span class="info-box-text">Chậm muộn</span>
                            <span class="info-box-number">{{ $data['delay']}} <small>đề tài</small></span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-green glyphicon glyphicon-flag"></span>
                        <div class="info-box-content">
                            <span class="info-box-text">Đã nghiệm thu</span>
                            <span class="info-box-number">{{ $data['acceptance'] }} <small>đề tài</small></span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-green glyphicon glyphicon-usd"></span>
                        <div class="info-box-content">
                            <span class="info-box-text">Đã thanh lý</span>
                            <span class="info-box-number">{{ $data['liquidation'] }} <small>đề tài</small></span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-green glyphicon glyphicon-trash"></span>
                        <div class="info-box-content">
                            <span class="info-box-text">Đã bị hủy</span>
                            <span class="info-box-number">{{ $data['destroy']}} <small>đề tài</small></span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <!-- fix for small devices only -->
                <div class="clearfix visible-sm-block"></div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-green glyphicon glyphicon-send"></span>
                        <div class="info-box-content">
                            <span class="info-box-text">Chứng nhận</span>
                            <span class="info-box-number">{{ $data['certify'] }} <small>đề tài</small></span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <!-- /.col -->
            </div>
        </div><!-- /.Thống kê nhanh -->
    @endif
    <div class="row" style="padding: 0px 15px 15px">
        <h3 class="text-center">Nhắc lịch công việc</h3> <br />
        <div class="col-sm-12">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs" id="myTab">
                    <li class="active"><a href="#tab_1" data-toggle="tab">Danh mục đề tài thẩm định</a></li>
                    <li><a href="#tab_2" data-toggle="tab">Danh mục đề tài triển khai</a></li>
                    <li><a href="#tab_3" data-toggle="tab">Danh mục đề tài nghiệm thu</a></li>
                   
                </ul>

                <div class="tab-content" ng-controller="CategoryController">
                    <div class="tab-pane active" id="tab_1">
                        @if (count($expertise_data))
                        <table class="table table-hover table-bordered">
                            <thead>
                                <tr class="active">
                                    <th class="text-center">#</th>
                                    <th class="text-center">Ngày làm việc</th>
                                    <th class="text-center">Đề tài chưa có nội dung thẩm định</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i=1; ?>
                                @foreach ($expertise_data AS $k => $v)
                                <tr {{ eachTr($k) }}>
                                    <td class="text-center"><small>{{ $i++ }}</small></td>
                                    <td class="text-center"><small>{{ $k }}</small></td>
                                    <td><small>{!! $v !!}</small></td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                        @else
                            Không có dữ liệu
                        @endif
                    </div><!-- /.pane 1 -->

                    <div class="tab-pane" id="tab_2">
                        @if (count($survey_data))
                        <table class="table table-hover table-bordered">
                            <thead>
                                <tr class="active">
                                    <th class="text-center">#</th>
                                    <th class="text-center">Ngày làm việc</th>
                                    <th class="text-center">Đề tài chưa có nội dung triển khai</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i=1; ?>
                                @foreach ($survey_data AS $k => $v)
                                <tr {{ eachTr($k) }}>
                                    <td class="text-center"><small>{{ $i++ }}</small></td>
                                    <td class="text-center"><small>{{ $k }}</small></td>
                                    <td><small>{!! $v !!}</small></td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                        @else
                            Không có dữ liệu
                        @endif
                    </div><!-- /.tab-panel 2 -->

                    <div class="tab-pane" id="tab_3">
                        @if (count ($acceptance_data))
                        <table class="table table-hover table-bordered">
                            <thead>
                                <tr class="active">
                                    <th class="text-center">#</th>
                                    <th class="text-center">Ngày làm việc</th>
                                    <th class="text-center">Đề tài chưa có nội dung thẩm định</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i=1; ?>
                                @foreach ($acceptance_data AS $k => $v)
                                <tr {{ eachTr($k) }}>
                                    <td class="text-center"><small>{{ $i++ }}</small></td>
                                    <td class="text-center"><small>{{ $k }}</small></td>
                                    <td><small>{!! $v !!}</small></td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                        @else
                            Không có dữ liệu
                        @endif
                    </div><!-- /.pane 3 -->

                    <div class="tab-pane" id="tab_4">
                        @if (count($liquidation_data))
                        <table class="table table-hover table-bordered">
                            <thead>
                                <tr class="active">
                                    <th class="text-center">#</th>
                                    <th class="text-center">Ngày làm việc</th>
                                    <th class="text-center">Đề tài chưa có nội dung triển khai</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i=1; ?>
                                @foreach ($liquidation_data AS $k => $v)
                                <tr {{ eachTr($k) }}>
                                    <td class="text-center"><small>{{ $i++ }}</small></td>
                                    <td class="text-center"><small>{{ $k }}</small></td>
                                    <td><small>{!! $v !!}</small></td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                        @else
                            Không có dữ liệu
                        @endif
                    </div><!-- /.pane 4 -->
                </div><!-- /.tab-content -->
            </div><!-- /.tab-custom -->
        </div><!-- /.tab -->
    </div><!--  /.row -->

@endsection
