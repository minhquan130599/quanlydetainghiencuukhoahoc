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
            <h3 class="box-title">Gia hạn đề tài : {{ $data_topic->stendt}}</h3><br>
            <b>Chủ nhiệm : {{ $data_topic->shodem}}</b><br>
            <b>Ngày bắt đầu: {{ date('d/m/Y', $data_topic->dngaybd) }}</b><br>
            <b>Số lần đã ra hạn : {{count($data)}}</b>

        </div><!-- /.box-header -->
        <div class="box-body">
            <form action="{{ route('admin.renewal.update') }}" method="POST">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr class="active">
                                <th>#</th>
                                <th class="text-center">Ngày xin ra hạn</th>
                                <th class="text-center">Ra hạn thêm đến ngày</th>
                                <th width="40%" class="text-center">Nội dung</th>
                                <th width="40%" class="text-center">Lý do</th>
                                <th class="text-center">File đính kèm</th>
                                <th class="text-center">Xác nhận</th>
                            </tr>
                        </thead>
                        <tbody>
                           @foreach ($data AS $key => $val)
                           <tr>
                               <td>{{ $key + 1 }}</td>
                               <td>{{ date('d/m/Y', strtotime($val->updated_at))}}</td>
                               <td>{{ $val->dngayrahan }}</td>
                               <td>{{ $val->noidung}}</td>
                               <td>{{ $val->lydo}}</td>
                               <td class="text-center">
                                @if($val->filedinhkem != '')
                                    <a href="{{ $val->filedinhkem }}" class="btn btn-primary btn-sm" title="Download file đính kèm" data-toggle="tooltip"><i class="glyphicon glyphicon-download-alt"></i></a>
                                @endif
                               </td>
                               <td>
                                   <button type="submit" name="updatetrangthai" value="{{$val->id}}" onclick="return confirm('Xác nhận cho đề tài gia hạn?');" class="btn btn-sm @if($val->xacnhan == 0)btn-danger" >Hủy @else btn-success" >Xác nhận @endif </button>
                               </td>
                           </tr>
                           @endforeach
                        </tbody>
                   </table>
                </div><!-- /.table-resposive -->
            </form>
        </div>

</section><!-- /.content -->
@endsection
