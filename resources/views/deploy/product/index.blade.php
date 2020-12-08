@extends('master.main_admin')
@section('title', 'Tra cứu sản phẩm khoa học')
@section('content-header')
    <section class="content-header">
        <h1>
            Triển khai
            <small>Sản phẩm khoa học</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#">Triển khai</a></li>
            <li class="active">Sản phẩm khoa học</li>
        </ol>
    </section>
@endsection <!-- /.content-header -->

@section('content')
<section class="content">
    <div class="box box-info">
        <div class="box-header with-border">
            <h3 class="box-title">Sản phẩm khoa học</h3>
            <div class="box-tools">
                <!-- <a href="{{ route('researcher.product.create') }}" class="btn btn-primary btn-sm"><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> Thêm sản phẩm</a> -->
            </div><!--  /.box-tools -->
        </div><!--/.box-header-->

        <div class="box-body">
            <div class="search">
            <div class="table-resposive">
                <table class="table table-bordered table-hover datatables">
                    <thead>
                        <tr class="active">
                            <th>#</th>
                            <th>Đề tài khoa học</th>
                            <th>Chủ nhiệm</th>
                            <th>Sản phẩm</th>
                            <th>Địa điểm <br> công bố</th>
                            <th>Định danh</th>
                            <th>Ghi chú</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data['paginatorContent'] AS $key => $p)
                        <tr>
                            <td>{{ numeric_order($data['page'], $key, 15) }}</td>
                            <td>{{ $p->stendt }}</td>
                            <td>{{ $p->shocvan }}</td>
                            <td>{{ $p->stensp }}</td>

                            <td class="text-center">
                                {{ $p->sthoigiancongbo }} <br>
                                {{ $p->snoicongbo }}
                            </td>
                            <td>{!! $p->sdinhdanh !!}</td>
                            <td>{!! $p->sghichu !!}</td>
                            <!-- <td>
                                <div class="btn-group">
                                    <a href="{{ route('researcher.product.edit', $p->pk_imasp) }}" class="btn btn-default btn-sm">
                                        <span class="glyphicon glyphicon-pencil"></span>
                                    </a>
                                </div>
                            </td> -->
                        </tr>
                        @endforeach
                    </tbody>
                </table><!-- /.table table-bordered table-hover -->
            </div><!-- /.table-resposive -->
        </div><!-- /.box-boy -->

    </div><!--/.box-->
</section><!--/.content-->
@endsection <!-- /.content -->
