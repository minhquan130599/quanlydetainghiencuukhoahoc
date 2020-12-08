@extends('master.main_admin')
@section('title', 'Lập hợp đồng')
@section('content-header')
  <section class="content-header">
    <h1>
        Lập kế hoạch
        <small>Lập hợp đồng</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#">Lập kế hoạch</a></li>
        <li class="active">Lập hợp đồng</li>
    </ol>
  </section>
@endsection

@section('content')
<section class="content">
  <!-- Default box -->
  <div class="box">
    <div class="box-header with-border">
      	<h3 class="box-title">
            Lập hợp đồng
            <small>(Với các đề tài có kết quả thẩm định là <b>"Đạt"</b>)</small>
        </h3>
	    @include('blocks.toolbox', ['route' => route('admin.contract.index'), 'keyword' => $data['keyword'], 'category' => ['activity' => 'plan.contract._form', 'url' => route('admin.contract.create'), 'title' => 'Tạo hợp đồng', 'data' => $data]])
    </div><!-- /.box-header -->


    <div class="box-body">
    	<div class="table-responsive">
	       	<table class="table table-bordered table-hover">
	       	<thead>
	       		<tr class="active">
	       			<th>#</th>
	       			<th>Mã số đề tài</th>
	       			<th>Đề tài khoa học</th>
                    <th>Số hiệu <br>hợp đồng</th>
	       			<th>Ngày ký</th>
                    <th width="12%">Người ký</th>
                    <th>Ghi chú</th>
	       			<th width="8%">Tác vụ</th>
	       		</tr>
	       	</thead>
	       	<tbody>
	       		@foreach ($data['paginatorContent'] AS $key => $val)
                <tr>
                    <td>{{ numeric_order($data['page'], $key, 15) }}</td>
                    <td>{{ $val->smasodetai }}</td>
                    <td>{{ $val->stendt }}</td>
                    <td>{{ $val->ssohieu }}</td>
                    <td>{{ $val->dngaylap }}</td>
                    <td>{{ $val->snguoiky }}</td>
                    <td>{{ $val->sghichu }}</td>
                    <td>
                        <div class="btn-group" role="group">
                            <a title="Chỉnh sửa hợp đồng" class="btn btn-default btn-sm edit-contract" data-value="{{ $val->pk_imahd }}" data-topicID="{{ $val->fk_imadt }}" data-toggle="modal" href='#contractModal'>
                                <span class="glyphicon glyphicon-pencil"></span>
                            </a>

                            @if ($val->pk_imatt == 2) <!-- /.Nếu chưa triển khai thì mới hiện, triển khai rồi mà xóa => lỗi -->
                            <form action="{{ route('admin.contract.delete', $val->pk_imahd) }}" method="POST" class="inline-form-delete">
                                <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                                <button type="button" class="btn btn-default btn-sm" onclick="confirmDelete(this)">
                                    <span class="glyphicon glyphicon-trash" title="Hủy hợp đồng đề tài khoa học"></span>
                                </button>
                            </form>
                            @endif
                        </div>
                    </td>
                </tr>
                @endforeach
	       	</tbody>
	       </table>
	   </div><!-- /.table-resposive -->
    </div><!-- /.box-body -->
    @include('blocks.box_footer', ['data' => $data])
  </div>
  <!-- /.box -->
</section><!-- /.content -->
@endsection

@section('style')
<link rel="stylesheet" href="/plugins/bootstrap-sweetalert/dist/sweetalert.css" />
@endsection


@section('script')
    <script src="/plugins/jquery-validation/jquery.validate.min.js" type="text/javascript"></script>
    <script src="/plugins/jquery-validation/additional-methods.min.js" type="text/javascript"></script>

    <script src="/plugins/input-mask/jquery.inputmask.js" type="text/javascript"></script>
    <script src="/plugins/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
    <script src="/plugins/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('label').addClass('control-label');
            $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
        });
    </script>
    <script src="/app/js/plan/contract.js" type="text/javascript"></script>
    <!-- <script src="/app/js/ng_plan/ContractController.js"></script> -->
    <script type="text/javascript" src="/plugins/bootstrap-sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
        function confirmDelete(selector)
        {
            swal({
              title: "Hủy hợp đồng đề tài này?",
              text: "Dữ liệu về hợp đồng NCKH sẽ được hệ thống hủy bỏ hoàn toàn",
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


