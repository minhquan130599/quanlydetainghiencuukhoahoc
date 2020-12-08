<div class="modal fade" id="contractModal">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Cập nhật thông tin bản mềm</h4>
			</div>
			<div class="modal-body">
				<form action="{{ route('admin.certify.store') }}" class="form-horizontal" method="POST" autocomplete="off" enctype="multipart/form-data">
					<input type="hidden" name="_token" value="{{ csrf_token() }}" />
					<div class="modal-body">
						<div class="form-group row">
							<label class="col-sm-3 control-label">Đề tài <span class="text-red">*</span></label>
							<div class="col-sm-9"> 
								<select name="txtDetai" class="form-control select2" style="width: 100%;" required="required">
									@if (count($data['topic_list']) > 0)
										<option value="">--Chọn đề tài gửi bản mềm--</option>
										@foreach ($data['topic_list'] AS $topic)
										<option value="{{ $topic['pk_imadt'] }}">{{ $topic['stendt'] }}</option>
										@endforeach
									@else
										<option value="">--Không có dữ liệu đề tài chứng nhận--</option>
									@endif
								</select>
							</div><!--  /.col-sm-9 -->
						</div><!--  /.form-group -->

						<div class="form-group row">
							<label class="col-sm-3 control-label">File bản mềm <span class="text-red">*</span></label>
							<div class="col-sm-9">
								<input type="file" name="fAttach" required="required" />
							</div><!--  /.col-sm-9 -->
						</div><!--  /.form-group -->

						<div class="form-group row">
							<label class="col-sm-3 control-label">Quyển cứng báo cáo <span class="text-red">*</span></label>
							<div class="col-sm-9">
								<label class="radio-inline" style="padding-left: 0;">
									<input type="radio" name="bBaocao" class="iCheck" value="1" checked="checked">
									Đã nộp
								</label>

								<label class="radio-inline" style="padding-left: 0;">
									<input type="radio" name="bBaocao" class="iCheck" value="0">
									Chưa nộp
								</label>
								
								<p style="margin-top: 10px;">
									<span class="glyphicon glyphicon-phone-alt"></span> {{ $data['library']->stendv }}: 
									<span class="text-bold">
										{{ $data['library']->sdienthoai }} - {{ $data['library']->semail }}
									</span>
								</p>
							</div><!--  /.col-sm-9 -->
						</div><!--  /.form-group -->

						<div class="form-group row">
							<label class="col-sm-3 control-label">Chứng nhận</label>
							<div class="col-sm-9">
								<label class="checkbox-inline" style="padding-left: 0;">
									<input type="checkbox" name="bCertify" class="iCheck" value="1">
									Có yêu cầu chứng nhận?
								</label>
							</div><!--  /.col-sm-9 -->
						</div><!--  /.form-group -->

						<div class="form-group">
							<label class="col-sm-3 control-label">Lưu ý <span class="text-red">*</span></label>
							<div class="col-sm-9">
								<ol class="text-bold text-green" style="padding-left: 20px;">
									<li>Chấp nhận file bản mềm có định dạng (.doc, .docx, .xls, ,xlsx, ,ppt, .pptx, .pdf).</li>
									<li>Vui lòng nén lại thành định dạng .zip hoặc .rar trong trường hợp có nhiều file.</li>
									<li>Dung lượng tối đa cho file bản mềm là 15MB.</li>
								</ol>
							</div><!--  /.col-sm-9 -->
						</div><!--  /.form-group -->
						
						<div class="certify" hidden="true">
							<legend class="row" width="100%">Thông tin chứng nhận</legend>
							<div class="form-group">
								<label class="col-sm-3 control-label">Ngày cấp chứng nhận</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="datemask" name="dNgaycap" placeholder="ngày/tháng/năm" />
								</div><!--  /.col-sm-9 -->
							</div><!--  /.form-group -->

							<div class="form-group">
								<label class="col-sm-3 control-label">Người ký</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="txtNguoiky" />
								</div><!--  /.col-sm-9 -->
							</div><!--  /.form-group -->

							<div class="form-group">
								<label class="col-sm-3 control-label">Ghi chú</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="txtGhichu" />
								</div><!--  /.col-sm-9 -->
							</div><!--  /.form-group -->
						</div><!-- /.certify -->
					</div><!-- /.modal-body -->

					<div class="modal-footer">
						<span class="text-red pull-left">* </span>
						<span class="pull-left">: Thông tin bắt buộc</span>
						<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
						<button type="submit" name="submit" class="btn btn-primary"> Lưu thông tin</button>
					</div><!--  /.modal-footer -->
				</form>
			</div><!-- /.modal-body -->
		</div>
	</div>
</div>