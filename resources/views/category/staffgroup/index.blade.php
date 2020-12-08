@extends('master.main_admin')
@section('title', 'Danh mục nhóm cán bộ')
@section('content-header')
<section class="content-header">
	<h1>
		Nhóm cán bộ
	</h1>
	<ol class="breadcrumb">
		<li><a href="#">Danh mục nhóm cán bộ</a></li>
	</ol>
</section>
@endsection

@section('content')
<form action="{{ isset($staffgroup) ? route('admin.staffgroup.update',$staffgroup->pk_imanhomcb) : route('admin.staffgroup.create')  }}" method="POST">
	<div class="row">
		<div class="col-md-5">
			<section class="content">
				<div class="box box-info">
					<div class="box-header with-border">
						<h3 class="box-title">Thêm nhóm cán bộ</h3>
					</div><!--/.box-header-->
					<div class="box-body">
						<div class="form-group">
							<label>Tên nhóm cán bộ <span class="text-red">*</span></label>
							<input name="tennhomcanbo" class="form-control" value="{{isset($staffgroup) ? $staffgroup->stennhomcb : null}}" type="text" required="required">
						</div>
						<div class="form-group">
							<label>Mô tả<span class="text-red">*</span></label>
							<textarea name="mota" rows="5" required="required">{{isset($staffgroup) ? $staffgroup->smota : null}}</textarea>
						</div>
					</div><!-- /.box-boy -->
					<div class="box-footer">
						<span class="pull-right">
							<strong class="text-red">*</strong> : Thông tin bắt buộc <br>
						</span>
						<button type="submit" type="submit" class="btn btn-primary">Lưu thông tin</button>
					</div><!--  /.panel-footer -->
				</div><!--/.box-->
			</section><!--/.content-->
		</div>


		<div class="col-md-7">
			<section class="content">
				<div class="box box-info">
					<div class="box-header with-border">
						<h3 class="box-title">Danh mục nhóm cán bộ</h3><!-- /.box-title -->
					</div><!-- /.box-header with-border -->
					<div class="box-body">
						<table class="table table-hover table-bordered">
							<thead>
								<tr class="active">
									<th>#</th>
									<th>Nhóm cán bộ</th>
									<th>Ghi chú</th>
									<th width="8%">Tác vụ</th>
								</tr>
							</thead>
							<tbody>
								@foreach ($data AS $key => $val)
								<tr>
									<td>{{ $key+1 }}</td>
									<td>{{ $val->stennhomcb }}</td>
									<td>{{ $val->smota }}</td>
									<td>
										<a title="Sửa loại đề tài" class="btn btn-default btn-sm" href="{{ route('admin.staffgroup.edit', $val->pk_imanhomcb) }}"><span class="glyphicon glyphicon-pencil"></span></a>
									</tr>
									@endforeach
								</tbody>
							</table>
						</div><!-- /.box-boy -->
					</div><!--/.box-->
				</section><!--/.content-->
			</div>
		</div>
	</form>
	@endsection
