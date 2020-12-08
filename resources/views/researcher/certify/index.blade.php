@extends('master.main_admin')
@section('title', 'Nộp bản mềm - chứng nhận')
@section('content-header')
  <section class="content-header">
    <h1>
        Nộp bản mềm - chứng nhận
    </h1>
    <ol class="breadcrumb">
        <li class="active">Nộp bản mềm - chứng nhận</li>
    </ol>
  </section>
@endsection

@section('content')
<section class="content">
  <!-- Default box -->
  <div class="box">
    <div class="box-header with-border">
      	<h3 class="box-title">Nộp bản mềm - chứng nhận</h3>
    </div><!-- /.box-header -->
	
		@if (count($data))
	    <input type="hidden" name="_token" value="{{ csrf_token() }}" />
		    <div class="box-body">
		       	<table class="table table-hover table-bordered" id="datatables">
			       	<thead>
			       		<tr class="active">
			       			<th class="text-center">#</th>
			       			<th>Đề tài khoa học</th>
			       			<th>Quyển thư viện</th>
			       			<th>Download bản mềm</th>
			       			<th>Tác vụ</th>
			       		</tr>
			       	</thead>
			       	<tbody>
			       		@foreach ($data AS $key => $val)
			       		<tr>
							<td class="text-center">{{ $key }}</td>
			       			<td>{{ $val->stendt }}</td>
			       			<td class="text-center">{{ $val->bquyenbaocao == 1 ? 'Đã nộp' : 'Chưa nộp'}}</td>
			       			<td class="text-center"><a href="{{ $val->filebanmem }}">Download</a></td>
			       			<td class="text-center">
			       			<a class="btn btn-primary btn-sm" data-toggle="modal" href="#modalEdit{{$key}}">Gửi bản mềm</a>
					  		@include('researcher.certify.edit', [
					  			'data' => $val
					  		])  		
							</td>
			       		</tr>
			       		@endforeach
			       	</tbody>
		       	</table>
		    </div><!-- /.box-body -->
    	@else
       		<p style="padding: 10px;">Không có dữ liệu</p>
       	@endif
  </div>
  <!-- /.box -->
</section><!-- /.content -->
@endsection


@section('script')

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
	$(document).ready(function() {
		$('.iCheck').on('ifChecked', function () {
			$(this).parents('tr').find('input[name="txtThoigianRahan[]"]')
								 .removeAttr('disabled')
								 .datepick();
								 
			$('#giahan').removeAttr('disabled');				 
		});

		$('.iCheck').on('ifUnchecked', function () {
			$(this).parents('tr').find('input[name="txtThoigianRahan[]"]')
								 .attr('disabled', true)
								 .datepick('destroy');
			$('#giahan').attr('disabled',true);	
		});
	});
</script>
@endsection
