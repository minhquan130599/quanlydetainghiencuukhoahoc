@extends('master.main_admin')
@section('title', 'Danh mục loại đề tài')
@section('content-header')
  <section class="content-header">
    <h1>
        Nhóm đề tài
    </h1>
    <ol class="breadcrumb">
        <li><a href="#">Danh mục loại đề tài</a></li>
    </ol>
  </section>
@endsection

@section('content')
<form action="{{ isset($tpc) ? route('admin.topiccategory.update',$tpc->pk_smaldt) : route('admin.topiccategory.create')  }}" method="POST">
	<div class="row">
		<div class="col-md-5">
			<section class="content">
			        <div class="box box-info">
			            <div class="box-header with-border">
			                <h3 class="box-title">Thêm loại đề tài</h3>
			            </div><!--/.box-header-->
			           	<div class="box-body">
							<div class="form-group">
								<label>Tên loại đề tài <span class="text-red">*</span></label>
								<input name="tenloaidetai" class="form-control" value="{{isset($tpc) ? $tpc->stenldt : null}}" type="text">
							</div>

							<div class="form-group">
								<label>Ghi chú <span class="text-red">*</span></label>
								<textarea name="ghichu" rows="5">{{isset($tpc) ? $tpc->sghichu : null}}</textarea>
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
			           	<div class="box-body">
				            <table class="table table-hover table-bordered">
				                <thead>
				                    <tr class="active">
				                        <th>#</th>
				                        <th>Tên loại đề tài</th>
				                        <th>Ghi chú</th>
				                        <th width="8%">Tác vụ</th>
				                    </tr>
				                </thead>
				                <tbody>
				                @foreach ($data AS $key => $val)
					                <tr>
					                	<td>{{ $key+1 }}</td>
					                	<td>{{ $val->stenldt }}</td>
					                	<td>{{ $val->sghichu }}</td>
					                	<td>
					                		<a title="Sửa loại đề tài" class="btn btn-default btn-sm" href="{{ route('admin.topiccategory.edit', $val->pk_smaldt) }}"><span class="glyphicon glyphicon-pencil"></span></a>
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
