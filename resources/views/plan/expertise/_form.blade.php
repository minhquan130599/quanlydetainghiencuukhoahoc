<div class="row">
	<div class="col-sm-6">
		<section class="content">
			<div class="box box-info">
				<div class="box-header with-border">
	                <h3 class="box-title">{{ $title }}</h3>
	            </div><!--/.box-header-->

	            <div class="box-body">
					<div class="pre-scrollable1">
                        <table class="table table-bordered table-hover datatable" height="100%">
							<thead>
								<tr class="active">
									<th class="text-center">#</th>
									<th>{{ $thead }}</th>
								</tr>
							</thead>

							<tbody>
								<!-- /.Tạo mảng các đề tài đã tích trước đó -->
								<?php $array = array(); ?>
								@if (old('choose'))
									@foreach (old('choose') AS $old)
										<?php $array[$old] = $old; ?>
									@endforeach
								@endif

								<!-- /.Mảng đối tượng các đề tài khi thêm -->
								@if (!empty($topic_edit))
									@foreach ($topic_edit AS $topic)
										<tr>
											<td>
												<input name="choose[]" class="iCheck" value="{{ $topic->pk_imadt }}" type="checkbox" checked="checked"{{ (!empty($array[$topic->pk_imadt]) && $array[$topic->pk_imadt] == $topic->pk_imadt) ? 'checked' : null }}>
											</td>
											<td>{{ $topic->stendt }}</td>
										</tr>
									@endforeach
								@endif

								@foreach ($data['topic_list'] as $topic)
								<tr>
									<td class="text-center">
										<input name="choose[]" class="iCheck" value="{{ $topic->pk_imadt }}" type="checkbox" {{ (!empty($array[$topic->pk_imadt]) && $array[$topic->pk_imadt] == $topic->pk_imadt) ? 'checked' : null }}>
									</td>
                            		<td>{{ $topic->stendt }}</td>
                            	</tr>
								@endforeach
                        	</tbody>
                        </table>
                    </div><!-- /.pre-scroll -->
				</div><!--  /.box-body -->
			</div><!--  /.box box-info -->
		</section><!--  /.content -->
	</div><!--  /.col-sm-6 -->

	<div class="col-sm-6">
		<section class="content">
	        <div class="box box-info">
	            <div class="box-header with-border">
	                <h3 class="box-title">Thông tin hội đồng</h3>
	            </div><!--/.box-header-->

	           	<div class="box-body">
	           		<div class="form-group">
						<label>Mã số hội đồng <span class="text-red">*</span></label>
						<input name="mahoidong" class="form-control" value="{!! old('mahoidong', isset($expertise) ? $expertise->smahoidong : null) !!}" type="text">
					</div>

					<div class="form-group">
						<label>Tên hội đồng <span class="text-red">*</span></label>
						<input name="tenhoidong" class="form-control" value="{!! old('tenhoidong', isset($expertise) ? $expertise->stenhd : null) !!}" type="text">
					</div>

					<div class="form-group">
						<label>Số quyết định <span class="text-red">*</span></label>
						<input name="quyetdinh" class="form-control" value="{!! old('quyetdinh', isset($expertise) ? $expertise->squyetdinh : null) !!}" type="text">
					</div>

					<div class="form-group">
						<label>Ngày thành lập <span class="text-red">*</span></label>
						<input name="ngaythanhlap" class="form-control datepick" value="{!! old('ngaythanhlap', isset($expertise) ? $expertise->dngaythanhlap : null) !!}" type="text">
					</div>

					<div class="form-group">
						<label>Ngày làm việc <span class="text-red">*</span></label>
						<input name="ngaylamviec" class="form-control datepick" value="{!! old('ngaylamviec', isset($expertise) ? $expertise->dngaylamviec : null) !!}" type="text">
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
	</div><!--  /.col-sm-6 -->
</div><!--  /.row -->

@section('style')
	<!-- Datepick -->
  	<link rel="stylesheet" href="/plugins/datepick/jquery.datepick.css">
  	<!-- iCheck for checkboxes and radio inputs -->
  	<link rel="stylesheet" href="/plugins/iCheck/all.css">
@endsection

@section('script')
	<script src="/plugins/datepick/jquery.datepick.js"></script>
	<script src="/plugins/iCheck/icheck.min.js"></script>
@endsection