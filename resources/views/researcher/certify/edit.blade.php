<div class="modal fade" id="modalEdit{{$key}}">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<form action="{{ route('researcher.certify.update',$data->pk_imadt) }}" class="form-horizontal" method="POST" autocomplete="off" enctype="multipart/form-data">
					<input type="hidden" name="_token" value="{{ csrf_token() }}" />
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Cập nhật thông tin bản mềm</h4>
					<p><strong>Đề tài: </strong> {{ $data->stendt }}
					<p><strong>Chủ nhiệm:</strong> {{ $data->shocvan }}
				</div>
				<div class="modal-body">
							<div class="form-group row">
								<label class="col-sm-3 control-label">File bản mềm</label>
								<div class="col-sm-9">
									<input type="file" name="fAttach" />
									<small class="help-block">
											Hệ thống sẽ thay thế file bản mềm nếu bạn chọn file và lưu thay đổi.<br />
											Trong trường hợp không chọn file bản mềm, hệ thống sẽ giữ file bản mềm đã tải lên trước đó.
										</small>
								</div><!--  /.col-sm-9 -->
							</div><!--  /.form-group -->

							<div class="form-group">
								<label class="col-sm-3 control-label">Lưu ý <span class="text-red">*</span></label>
								<div class="col-sm-9">
									<ol class="text-bold text-green" style="padding-left: 20px;">
										<li>Chấp nhận file bản mềm có định dạng (.doc, .docx, .xls,xlsx, ,ppt, .pptx, .pdf).</li>
										<li>Vui lòng nén lại thành địdnh ạng .zip hoặc .rar trong trường hợp có nhiều file.</li>
										<li>Dung lượng tối đa cho file bản mềm là 15MB.</li>
									</ol>
								</div><!--  /.col-sm-9 -->
							</div><!--  /.form-group -->
				</div><!-- /.modal-body -->
				<div class="modal-footer">
					<span class="text-red pull-left">* </span>
					<span class="pull-left">: Thông tin bắt buộc</span>
					<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
					<button type="submit" name="submit" class="btn btn-primary"> Lưu thông tin</button>
				</div><!--  /.modal-footer -->
			</form>
		</div>
	</div>
</div>