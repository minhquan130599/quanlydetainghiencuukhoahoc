@extends('master.main_admin')
@section('title', 'Hệ thống')
@section('content-header')
    <section class="content-header">
	    <ol class="breadcrumb">
	        <li class="active">Quản lý</li>
	    </ol>
    </section>
@endsection <!-- /.content-header -->

@section('content')
    <section class="content">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">Hệ thống</h3>
            </div><!--/.box-header-->

            <form action="{!! isset($system) ? route('admin.system.update',$system->pk_imahethong )  :route('admin.system.store')  !!}" method="POST" autocomplete="off">
                <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Tên chức năng<span class="text-red">*</span></label>
                                <input type="text" class="form-control" name="txtChucnang" value="{!! old('txtChucnang', isset($system) ? $system->stenhethong : null) !!}">
                            </div><!--  /.form-group -->
                            <div class="form-group">
                                <label>Thời gian <span class="text-red">*</span></label>
                                <input type="text" class="form-control" name="txtThoigian" id="reservation" value="{!! old('txtThoigian', isset($system) ? $system->sgiatri : null) !!}">
                            </div><!-- /.form group -->
                        </div>
                        <div class="col-md-8">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover">
                                    <thead>
                                        <tr class="active">
                                            <th style="width: 5%">#</th>
                                            <th style="width: 40%">Chức năng</th>
                                            <th style="width: 40%">Thời gian</th>
                                            <th style="width: 15%">Tác vụ</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($data AS $key => $val)
                                            <tr>
                                                <td>{{ $key + 1 }}</td>
                                                <td>{{ $val->stenhethong }}</td>
                                                <td>{{ date('d/m/Y',(int)substr($val->sgiatri,0,10)) }} - {{ date('d/m/Y', (int)substr($val->sgiatri, -10))}}</td>
                                                <td>
                                                    <div class="btn-group" role="group">
                                                      <a href="{{ route('admin.system.edit', $val->pk_imahethong) }}" class="btn btn-default btn-sm" title="Chỉnh sửa thông tin "><span class="glyphicon glyphicon-pencil"></span></a>
                                                    </div>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                               </table>
                           </div><!-- /.table-resposive -->
                        </div>
                    </div>
                </div>
                <div class="box-footer">
                   <span class="pull-right">
                        <strong class="text-red">*</strong> : Thông tin bắt buộc <br>
                    </span>
                    <button type="submit" type="submit" class="btn btn-primary">Lưu thông tin</button>
                </div><!-- /.box-footer -->
            </form>
        </div><!--/.box-->
    </section><!--/.content-->
@endsection <!-- /.content -->
@section('script')
    <script src="/plugins/daterangepicker/moment.min.js"></script>
    <script src="/plugins/daterangepicker/daterangepicker.js"></script>
    <script type="text/javascript">
        $(function() {
                    //Date range picker
            $('#reservation').daterangepicker({
                locale: {
                    format: 'DD/MM/YYYY'
                },
            });
        }); 
    </script>
@endsection

