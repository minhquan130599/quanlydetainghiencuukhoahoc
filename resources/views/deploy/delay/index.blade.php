@extends('master.main_admin')
@section('title', 'Danh mục đề tài chậm muộn')
@section('content-header')
  <section class="content-header">
    <h1>
        Đề tài chậm muộn
    </h1>
    <ol class="breadcrumb">
        <li><a href="#">Triển khai</a></li>
        <li class="active">Đề tài chậm muộn</li>
    </ol>
  </section>
@endsection

@section('content')
<section class="content">

  <!-- Default box -->
  <div class="box">
    <div class="box-header with-border">
      	<h3 class="box-title">Đề tài chậm muộn</h3>
    </div><!-- /.box-header -->

    <form action="{{ route('admin.delay.store') }}" method="POST">
		@if (count($data))
	    <div class="box-body">
	       	<table class="table table-hover table-bordered" id="datatables">
		       	<thead>
		       		<tr class="active">
		       			<th class="text-center">#</th>
		       			<th>Đề tài khoa học</th>
		       			<th>Chủ nhiệm</th>
		       			<th>Thời gian kết thúc</th>
		       			<th>Thời gian chậm muộn</th>
		       			<th>Tác vụ</th>
		       		</tr>
		       	</thead>
		       	<tbody>
		       		@foreach ($data AS $key => $val)
		       		<tr>
						<td class="text-center">{{ $key+1 }}</td>
		       			<td>{{ $val->stendt }}</td>
		       			<td>{{ $val->shocvan }}</td>
		       			<td class="text-center">{{ date('d/m/Y', $val->dngaykt) }}</td>
		       			<td class="text-center">{{ ceil((time() - $val->dngaykt)/(86400*30)) }} tháng</td>
		       			<!-- <td><input type="text" name="txtThoigianRahan[]" class="form-control" disabled="disabled"></td> -->
		       			<td>
		       				<!-- <button type="submit" class="btn btn-success btn-sm" onclick="return confirm('Gửi email yêu cầu ra hạn?')">
		       					<span class="glyphicon glyphicon-envelope"></span>
		       				</button> -->
		       				<a class="btn btn-success btn-sm" data-toggle="modal" href="#showModal{{$val->pk_imadt}}"><span class="glyphicon glyphicon-envelope"></span></a>
		       				@include('deploy.delay._modal', [
						  			'key' => $val
						  		])
	       			    </td>
		       		</tr>
		       		@endforeach
		       	</tbody>
	       	</table>
	    </div><!-- /.box-body -->


	    {{--
            <div class="box-footer">
    	       <button type="submit" name="submit" class="btn btn-primary">Gia hạn</button>
    	    </div><!--  /.box-footer -->
        --}}
    </form>
    	@else
       		<p style="padding: 10px;">Không có dữ liệu</p>
       	@endif

  </div>
  <!-- /.box -->
</section><!-- /.content -->
@endsection


@section('style')
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="/plugins/iCheck/all.css">
    <!-- Datepick -->
  <link rel="stylesheet" href="/plugins/datepick/jquery.datepick.css">
@endsection

@section('script')
<script src="/plugins/datepick/jquery.datepick.js"></script>
<script src="/plugins/iCheck/icheck.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.iCheck').on('ifChecked', function () {
			$(this).parents('tr').find('input[name="txtThoigianRahan[]"]')
								 .removeAttr('disabled')
								 .datepick();


		});

		$('.iCheck').on('ifUnchecked', function () {
			$(this).parents('tr').find('input[name="txtThoigianRahan[]"]')
								 .attr('disabled', true)
								 .datepick('destroy');
		});
	});
</script>
@endsection
