@extends('master.main_admin')
@section('title', 'Nội dung nghiệm thu đề tài')
@section('content-header')
  <section class="content-header">
    <h1>
        Triển khải
        <small>Nội dung nghiệm thu</small>
    </h1>
    <ol class="breadcrumb">
        <li>Triển khai</li>
        <li>Nghiệm thu đề tài</li>
        <li class="active">Nội dung nghiệm thu</li>
    </ol>
  </section>
@endsection

@section('content')
	<section class="content">
    <!-- Default box -->
    <div class="box" ng-controller="ExplainContentController">
        <div class="box-header with-border">
            <h3 class="box-title">Kết quả nghiệm thu</h3>
            <div class="box-tools">
                <a href="{{ route('admin.acceptance_content.create') }}" class="btn btn-primary btn-sm" title="Cập nhật nội dung nghiệm thu đề tài"><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> Thêm</a>
            </div><!--  /.box-tools -->
        </div><!-- /.box-header -->

        <div class="box-body">
            @include('deploy.acceptance_content.search', ['data' => $data])
            <table class="table table-hover table-bordered">
                <thead>
                    <tr class="active">
                        <th>#</th>
                        <th width="40%" class="text-center">Đề tài khoa học</th>
                        <th class="text-center">Hội đồng <br>nghiệm thu</th>
                        <th class="text-center">Ngày nghiệm thu <br>cơ sở</th>
                        <th class="text-center">Xếp loại <br>nghiệm thu</th>
                        <th class="text-center">Nội dung <br>nghiệm thu</th>
                        <th class="text-center">Tác vụ</th>
                    </tr>
                </thead>
                <tbody>
                    @if (!empty($data['paginatorContent']))
                        @foreach ($data['paginatorContent'] AS $key => $val)
                        <tr {{ $val->bsendmail == 1 ? 'class=success' : null }}>
                            <td>{{ numeric_order($data['page'], $key, 15) }}</td>
                            <td>{{ $val->stendt }}</td>
                            <td>{{ $val->stenhd }}</td>
                            <td class="text-center">{{ $val->dngayntcs }}</td>
                            <td class="text-center">{{ $val->stendmxeploai }}</td>
                            <td class="text-center"><a href="{{ route('deploy.category.show', [$val->pk_imadt, 'tab' => 6]) }}" target="_blank">Chi tiết</a></td>
                            <td class="text-center">
                                @if ($val->pk_imatt == 5)
                                <div class="btn-group" role="group">
                                    <a href="{{ route('admin.acceptance_content.edit', $val->pk_imantcs) }}" class="btn btn-default btn-sm" title="Chỉnh sửa nội dung nghiệm thu"><span class="glyphicon glyphicon-pencil"></span></a>
                                    <a class="btn btn-default btn-sm" data-toggle="modal" href="#showModal" data-value="{{ $val->pk_imadt }}" ng-click="getLeader({{ $val->pk_imadt }})"><span class="glyphicon glyphicon-envelope"></span></a>
                                </div>
                                @else
                                    Đề tài đã <br>thanh lý
                                @endif
                            </td>
                        </tr>
                        @endforeach
                    @else
                        Không có dữ liệu
                    @endif
                </tbody>
            </table><br />

            <div class="pull-right">
                <button type="button" class="btn btn-success" style="height: 24px; background-color: #d0e9c6;"></button> : Đã thông báo kết quả
            </div>
        </div><!--  /.box-body -->

        @include('plan.expertise_content._email', ['controller' => 'ExplainContentController'])
        @include('blocks.box_footerv2', ['data' => $data, 'search_data' => $data['search_data']])
    </div><!-- /.box -->
</section><!-- /.content -->
@endsection

@section('script')
    <script src="/app/js/ng_deploy/ExplainContentController.js"></script>
@endsection
