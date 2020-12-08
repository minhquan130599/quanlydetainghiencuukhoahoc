@extends('master.main_admin')
@section('title', 'Gia hạn đề tài')
@section('content-header')
  <section class="content-header">
    <h1>
        Gia hạn đề tài
        <small>Xác nhận</small>
    </h1>
    <ol class="breadcrumb">
        <li>Triển khai</li>
        <li>Gia hạn đề tài</li>
        <li class="active">Xác nhận</li>
    </ol>
  </section>
@endsection

@section('content')
	<section class="content">
    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Gia hạn đề tài</h3>

        </div><!-- /.box-header -->
        <div class="box-body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                        <thead>
                            <tr class="active">
                                <th>#</th>
                                <th>Đề tài xin ra hạn</th>
                                <th class="text-center">Số lần đã ra hạn</th>
                                <th class="text-center">Ngày bắt đầu triển khai</th>
                                <th class="text-center">Ngày xin ra hạn</th>
                                <th width="5%" class="text-center">Tác vụ</th>
                            </tr>
                        </thead>
                        <tbody>
                           @foreach ($data AS $key => $val)
                            <tr>
                                <th>{{$key + 1}}</th>
                                <td>{{ $val->stendt}}</th>
                                <td>{{$val->sl}}</td>
                                <td>{{ date('d/m/Y', $val->dngaybd) }}</td>
                                <td>{{ date('d/m/Y', strtotime($val->updated_at))}}</td>
                                <td>
                                    <a href="{{ route('admin.renewal.show',$val->fk_imadt) }}" class="btn btn-primary btn-sm" title="Xác nhận gia hạn đề tài" data-toggle="tooltip">Xem</a>
                                </td>
                            </tr>
                           @endforeach
                        </tbody>
                       </table>
                    </div><!-- /.table-resposive -->
        </div>

</section><!-- /.content -->
@endsection
