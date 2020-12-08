@extends('master.main_admin')
@section('title', 'Gia hạn đề tài')
@section('content-header')
  <section class="content-header">
    <h1>
        Gia hạn đề tài
    </h1>
    <ol class="breadcrumb">
        <li class="active">Gia hạn đề tài</li>
    </ol>
  </section>
@endsection
@section('style')
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="/plugins/iCheck/all.css">
  <!-- Datepick -->
  <link rel="stylesheet" href="/plugins/datepick/jquery.datepick.css">
@endsection
@section('content')
<section class="content">
  <!-- Default box -->
  <div class="box">
    <div class="box-header with-border">
      	<h3 class="box-title">Gia hạn đề tài</h3>
    </div><!-- /.box-header -->
    <form action="{{ route('researcher.delay.store') }}" method="POST" autocomplete="off" enctype="multipart/form-data">
	    <input type="hidden" name="_token" value="{{ csrf_token() }}" />
		    <div class="box-body">
		    	@if(count($data))
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							<label>Đề tài cần gia hạn</label>
                			<select class="form-control select2" name="txtDetai">
                				<option value="">Chọn đề tài cần gia hạn</option>
                				@foreach($data AS $k => $v)
                				<option value="{{ $v->pk_imadt}}" data-ntk="{{ date('d/m/Y',$v->dngaykt) }}">{{ $v->stendt}}</option>
                				@endforeach
                			</select>
						</div>	
					</div>
					<div class="col-md-12">
						<div class="form-group">
							<label>Nội dung</label>
                			<input type="text" name="txtNoidung" class="form-control" value="" />
						</div>	
					</div>
					<div class="col-md-12">
						<div class="form-group">
							<label>Lý do</label>
                			<textarea name="txtLydo" class="form-control" rows="3"></textarea>
						</div>	
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>Thời gian kết thúc thực hiện đề tài</label>
                			<input type="text" name="txtTGKT" class="form-control" value="" disabled="disabled" />
						</div>	
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>Thời gian xin gia hạn thêm</label>
                			<input type="text" name="txtTGKTM" class="form-control datepick" value="" />
						</div>	
					</div>
					<div class="col-md-12">
						<div class="form-group">
							<label>File đính kèm</label>
                			<input type="file" name="txtFile" class="form-control" placeholder="Vui lòng nhập giá trị số"  value="{!! old('txtKinhphi', isset($topic->fcptong) ? $topic->fcptong : null) !!}" />
						</div>	
					</div>
				</div>
				@else
					<p>không có dữ liệu</p>
				@endif
		    </div><!-- /.box-body -->
		    <div class="box-footer">
		    	<button class="btn btn-primary">Gia hạn</button>
		    </div><!--  /.box-footer -->
    </form>
    </form>
  </div>
  <div class="box"> 
  	<div class="box-header with-border">
      	<h3 class="box-title">Danh sách các đề tài đã gia hạn</h3>
    </div><!-- /.box-header -->
	<div class="box-body">
    	@if(count($data_giahan))
		<div class="row">
			<div class="col-md-12">
				<table class="table table-bordered table-hover" id="datatables">
					<thead>
						<tr class="active">
							<td style="width: 5%">STT</td>
							<td style="width: 55%">Tên đề tài</td>
							<td style="width: 10%">Ngày hết hạn</td>
							<td style="width: 10%">Ngày ra hạn thêm</td>
							<td style="width: 10%">Trạng thái</td>
							<td style="width: 10%">In biểu mẫu</td>
						</tr>
					</thead>
					<tbody>
						@foreach ($data_giahan as $k => $v)
						<tr>
						<td style="width: 5%">{{ $k + 1}}</td>
						<td style="width: 55%">{{$v->stendt}}</td>
						<td style="width: 10%">{{ date('d/m/Y',$v->dngaykt) }}</td>
						<td style="width: 10%">{{ $v->dngayrahan }}</td>
						<td style="width: 10%">
						@if($v->xacnhan == 0)
							<p class="text-red">Hủy yêu cầu</p>
						@else
							<p class="text-blue">Chấp nhận</p>
						@endif
						</td>
						<td style="width: 10%"><a target="_blank" href="{{route('researcher.delay.form',[$v->pk_imadt,$v->id] )}}" class="btn btn-primary pull-right" style="margin-right: 5px;">Download</td>
						</tr>
						@endforeach
					</tbody>
				</table>
			</div>
		</div>
		@else
			<p>không có dữ liệu</p>
		@endif
    </div><!-- /.box-body -->
  </div>
  <!-- /.box -->
</section><!-- /.content -->
@endsection

@section('style')
	<!-- Datepick -->
  	<link rel="stylesheet" href="/plugins/datepick/jquery.datepick.css">
  	<!-- iCheck for checkboxes and radio inputs -->
  	<link rel="stylesheet" href="/plugins/iCheck/all.css">
@endsection

@section('script')
<script src="/plugins/datepick/jquery.datepick.js"></script>
<script src="/plugins/iCheck/icheck.min.js"></script>
<script src="/plugins/iCheck/icheck.min.js"></script>
<!-- Datatable -->
<script src="/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/plugins/datatables/dataTables.bootstrap.js"></script>
<script src="/plugins/datepick/jquery.datepick.js"></script>
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
<script src="/plugins/nicedit/nicEdit.js" type="text/javascript"></script>
<script type="text/javascript">bkLib.onDomLoaded(nicEditors.allTextAreas);</script>
<script type="text/javascript">
	$(document).ready(function() {
		$('select[name=txtDetai]').change(function() {
			var option = $('option:selected', this).attr('data-ntk');
			$('input[name=txtTGKT]').val(option);
		});
	});
</script>
@endsection