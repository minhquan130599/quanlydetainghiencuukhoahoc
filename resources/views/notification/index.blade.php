@extends('master.main_admin')
@section('title', 'Hệ thống')
@section('content-header')
    <section class="content-header">
        <h1>
            Thông báo
        </h1>
	    <ol class="breadcrumb">
	        <li class="active">Quản lý thông báo</li>
	    </ol>
    </section>
@endsection <!-- /.content-header -->
@section('style')
    <link rel="stylesheet" href="/plugins/datatables/dataTables.bootstrap.css">
@endsection
@section('content')
<style type="text/css" media="screen">
    .dataTables_filter{
        float: right;
    }    
</style>
    <section class="content">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">Thông báo</h3>
                <div class="box-tools">
                    <form action="" method="GET" autocomplete="off">
                        <div class="input-group input-group-sm" style="width: 250px;">
                            <div class="input-group-btn">
                                <a href="#showModal1" data-toggle="modal" title="" class="btn btn-default pull-right"><i class="fa fa-plus"></i></a>
                                @include('notification._modal')
                            </div><!-- /.group -->
                        </div>
                    </form>
                </div>
            </div><!--/.box-header-->
                <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-bordered table-hover" id="datatables">
                                <thead>
                                    <tr class="active">
                                        <th style="width: 5%">#</th>
                                        <th style="width: 25%">Tiêu đề</th>
                                        <th style="width: 30%">Nội dung</th>
                                        <th style="width: 20%">Người nhận</th>
                                        <th style="width: 10%">Trạng thái</th>
                                        <th style="width: 10%">Tác vụ</th>
                                    </tr>
                                </thead>
                                <tbody>
                                @foreach ($data AS $key => $val)
                                    <tr>
                                        <td>{{ $key+1 }}</td>
                                        <td>{{ $val->stieude }}</td>
                                        <td class="more">{{ $val->snoidung }}</td>
                                        <td>
                                        @if (empty($val->shodem))
                                            Tất cả
                                        @else
                                            {{$val->shodem}}
                                        @endif
                                        </td>
                                        <form action="{{ route('admin.notification.stored',$val->pk_imatb) }}" method="POST" autocomplete="off">
                                        <td class="text-center">
<!--                                             @if ($val->strangthai === 1)
                                            <button name="duyet" value="1" type="submit" title="Hủy" class="btn btn-sm btn-success"><span class="glyphicon glyphicon-ok"></span></button>
                                        @else
                                            <button name="duyet" value="0" type="submit" title="Hủy" class="btn btn-sm btn-warning"><span class="glyphicon glyphicon-remove"></span></button>
                                        @endif -->
                                        <button type="submit" name="duyet" value="{{$val->strangthai}}" onclick="return confirm('Xác nhận đổi trạng thái?');" class="btn btn-sm
                                            @if ($val->strangthai === 1)
                                                btn-success" ><span class="glyphicon glyphicon-ok"></span>
                                            @else
                                                btn-warning" ><span class="glyphicon glyphicon-remove"></span>
                                            @endif
                                        </button>   
                                        </td>
                                        </form>
                                        <td>
                                            <button class="btn btn-default btn-sm suatrangthai" title="Chỉnh sửa thông tin" value="{{$val->pk_imatb}}"><span class="glyphicon glyphicon-pencil"></span></button>
                                            <a href="{{ route('admin.notification.delete',$val->pk_imatb) }}" class="btn btn-default btn-sm" title="Xóa thông tin" onclick="return confirm('Xác nhận xóa?');"><span class="glyphicon glyphicon-trash"></span></a>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                           </table>
                        </div>
                    </div>
                </div>
                <div class="box-footer">
                   <span class="pull-right">
                        <strong class="text-red">*</strong> : Thông tin bắt buộc <br>
                    </span>
                    <button type="submit" type="submit" class="btn btn-primary">Lưu thông tin</button>
                </div><!-- /.box-footer -->
        </div><!--/.box-->
    </section><!--/.content-->
<div class="modal fade" id="showModal1">
    <div class="modal-dialog">
        <form action="{{route('admin.notification.store')}}" method="POST" name="formNotifi" autocomplete="off" enctype="multipart/form-data">
            <input type="hidden" name="_token" value="{{ csrf_token() }}" />
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Gửi thông báo cho cán bộ</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="">Tiêu đề<span class="text-red">*</span></label>
                        <input name="tieude" type="text" class="form-control" required="required">
                    </div>
                    <div class="form-group">
                        <label for="">Nội dung<span class="text-red">*</span></label>
                        <textarea class="form-control" name="noidung" rows="5" required="required"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="">Người nhận</label>
                        <select name="nguoinhan" class="form-control select" style="width: 100%">
                            <option value="all">-- Đến tất cả --</option>
                            @foreach ($dscanbo as $key => $val)
                                <option value="{{ $val->pk_smacanbo }}">{{ $val->shodem }}</option>
                            @endforeach
                        </select>
                    </div>
                </div><!-- /.modal-body -->

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                    <button type="submit" class="btn btn-primary">Gửi thông báo</button>
                </div>
            </div>
        </form>
    </div>
</div><!-- /.Modal -->
@endsection <!-- /.content -->
@section('script')
<script src="/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/plugins/datatables/dataTables.bootstrap.js"></script>
<script type="text/javascript">
    $(function () {
        $("#datatables").DataTable({
            "aLengthMenu": [[10, 15, 25,50, -1], [10, 15, 25,50, "Tất cả"]],
            "iDisplayLength": 10,
            "language": {
                "lengthMenu": "Hiển thị _MENU_ dòng mỗi trang",
                "zeroRecords": "Không tìm thấy",
                "info": "Trang _PAGE_/_PAGES_",
                "infoEmpty": "Không có dữ liệu",
                "infoFiltered": "(lọc trong tổng số _MAX_)",
                "sSearch":       "Tìm nhanh: ",
                "oPaginate": {
                    "sFirst":    "Ðầuu",
                    "sPrevious": "Trước",
                    "sNext":     "Tiếp",
                    "sLast":     "Cuối"
                }
            }
        });
    });
</script>

<script type="text/javascript">
var url = $('base').attr('href');
    function clear() {
        $('input[name="tieude"]').val('');
        $('textarea[name="noidung"]').val('');
        $('select[name="nguoinhan"] > option[value="all"]').attr('selected', true);
        $('form[name="formNotifi"]').removeAttr('action');
    }
    $(document).ready(function() {
        $(document).on('click','.suatrangthai',function() {
            clear();
            $.ajax({
                url: "/admin/notification/edit",
                type: 'POST',
                data: {
                    "id": $(this).val()
                },
                success: function (result)
                {
                    $('input[name="tieude"]').val(result['stieude']);
                    $('textarea[name="noidung"]').val(result['snoidung']);
                    $('form[name="formNotifi"]').attr('action', url+'/admin/notification/update/'+result['pk_imatb']);
                    if (result.snguoinhan != null)
                    {
                        $('select[name="nguoinhan"] > option[value="'+result.snguoinhan+'"]').attr('selected', true);
                    }else {
                        $('select[name="nguoinhan"] > option[value="all"]').attr('selected', true);
                    } 
                    $("#showModal1").modal('show');
                    
                }
            });
        })
    });
</script>
@endsection

