@extends('master.main_admin')
@section('title', 'Tra cứu thông tin đề tài đăng ký')
@section('content-header')
  <section class="content-header">
    <h1>
        Lập kế hoạch
        <small>Tra cứu</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#">Lập kế hoạch</a></li>
        <li class="active">Tra cứu đề tài</li>
    </ol>
  </section>
@endsection

@section('content')
<section class="content">
  <!-- Default box -->
  <div class="box box-info">
    <div class="box-header with-border">
      	<h3 class="box-title">Tra cứu đề tài đã đăng ký</h3>
	    <div class="box-tools">
	    	<a href="{{ route('admin.topic.create') }}" class="btn btn-sm btn-primary" title="Quay về trang cập nhật đề tài"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i> Đăng ký đề tài</a>
	    </div><!--  /.box-tools -->
    </div><!-- /.box-header -->

    <div class="box-body">
    	@include('plan.topic.search', ['data' => $data, 'search_data' => $search_data])
    	<div class="table-responsive">
    		@if (count($data['paginatorContent']))
	       	<table class="table table-bordered table-hover">
	       	<thead>
	       		<tr class="active">
	       			<th class="text-center">#</th>
	       			<th class="text-center">Đề tài khoa học</th>
	       			<th class="text-center">Mục tiêu</th>
	       			<th class="text-center">Đ/chỉ, sản phẩm ứng dụng</th>
	       			<th class="text-center">Chủ nhiệm</th>
	       			<th class="text-center">Loại đề tài</th>
	       			<th class="text-center">Lĩnh vực</th>
	       			<th class="text-center">Năm đề tài(tháng)</th>
	       			<th class="text-center">Kinh phí dự kiến (VNĐ)</th>
	       			<th class="text-center">Tác vụ</th>
	       		</tr>
	       	</thead>
	       	<tbody>
	       		@foreach ($data['paginatorContent'] AS $key => $val)
	       		<tr class="{{ $val->bsendmail == 1 ? 'success' : null }}">
	       			<td class="text-center">{{ numeric_order($data['page'], $key, 15) }}</td>
	       			<td>{{ $val->stendt }}</td>
	       			<td class="daycell">
	       				{!! str_limit($val->smuctieu, 40) !!}
	       				<a class="btn btn-link btn-sm daysubscript" data-toggle="modal" href='#target{{$key}}' title="Bấm để xem chi tiết mục tiêu">Chi tiết</a>
	       				@include('plan.topic._modal', ['title' => $val->stendt, 'target' => $val->smuctieu, 'id' => sprintf('target%s', $key)])
	       			</td>


       				<td class="daycell">
	       				{!! str_limit(strip_tags($val->ssanpham), 40) !!}
	       				<a class="btn btn-link btn-sm daysubscript" data-toggle="modal" href='#address{{$key}}' title="Bấm để xem chi tiết sản phẩm">Chi tiết</a>
	       				@include('plan.topic._modal', ['title' => $val->stendt, 'target' => $val->ssanpham, 'id' => sprintf('address%s', $key)])
	       			</td>

	       			<td>{{ $val->shocvan }}</td>
	       			<td>{{ $val->stenldt }}</td>
	       			<td>{{ $val->stenlv }}</td>
	       			<td class="text-center">{{ $val->sonam }}</td>
	       			<td class="text-center">{{ number_format($val->fcptong, 0, '', '.') }}</td>
	       			<td width="12%">
	       				<div class="btn-group" role="group" style="padding-left: 5px;">
						  <a href="{{ route('admin.topic.edit', $val->pk_imadt) }}" class="btn btn-default btn-sm" title="Chỉnh sửa thông tin đăng ký" ><span class="glyphicon glyphicon-pencil"></span></a>
						  <a class="btn btn-default btn-sm" title="Gửi email báo hủy đề tài" data-toggle="modal" href='#remove{{ $key }}'><span class="glyphicon glyphicon-envelope"></span></a>
						  @include('plan.topic._remove', ['item' => $data['paginatorContent'][$key], 'id' => sprintf('remove%s', $key)])
						  <form action="{{ route('admin.topic.destroy', $val->pk_imadt) }}" method="POST" style="display: inline;">
						  	<button type="button" name="destroy" value="{{ $val->semail }}" class="btn btn-default btn-sm" onclick="return confirmDelete(this);" title="Hủy đề tài đã đăng ký"><span class="glyphicon glyphicon-trash"></span></button>
						  </form>
						</div>
	       			</td>
	       		</tr>
	       		@endforeach
	       	</tbody>
	       	@else
	       		Không có dữ liệu
	       	@endif
	       </table>

	       	<div class="pull-right">
	       		<button type="button" class="btn btn-success" style="height: 24px; background-color: #d0e9c6;"></button> : Đã thông báo qua email
	       	</div>
	   </div><!-- /.table-resposive -->
    </div><!-- /.box-body -->

    @include('blocks.box_footerv2', ['data' => $data, 'search_data' => $search_data])
  </div>
  <!-- /.box -->
</section><!-- /.content -->
@endsection


@section('style')
    <link rel="stylesheet" href="/plugins/bootstrap-sweetalert/dist/sweetalert.css" />
@endsection

@section('script')
<!-- Select 2 -->
<script type="text/javascript" src="/plugins/bootstrap-sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">
    function confirmDelete(selector)
    {
        swal({
          title: "Hủy đề tài đăng ký này?",
          text: "Dữ liệu về đề tài khoa học sẽ được hệ thống hủy bỏ hoàn toàn",
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
