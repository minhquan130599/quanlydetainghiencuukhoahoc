<div class="modal fade" id="contractModal">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Cập nhật nội dung hợp đồng</h4>
				<p class="topic_name"></p>
			</div>

			<form action="" class="form-horizontal" name="frmContract" autocomplete="off">
				<input type="hidden" name="_token" value="{{ csrf_token() }}" />
				<div class="modal-body">
					<div class="form-group">
						<label class="col-sm-3">Đề tài <span class="text-red">*</span></label>
						<div class="col-sm-9">
							<select name="txtDetai" class="form-control select2" style="width: 100%;" required="required">
								<option value="">--Chọn đề tài lập hợp đồng--</option>
								@foreach ($data['topic_list'] AS $topic)
								<option value="{{ $topic->pk_imadt }}">{{ $topic->stendt }}</option>
								@endforeach
							</select>
						</div><!--  /.col-sm-9 -->
					</div><!--  /.form-group -->


					<div class="form-group">
						<label class="col-sm-3">Mã số đề tài <span class="text-red">*</span></label>
						<div class="col-sm-9">
							<input type="text" name="txtMaso" class="form-control">
						</div><!--  /.col-sm-9 -->
					</div><!--  /.form-group -->

					<div class="form-group">
						<label class="col-sm-3">Người ký <span class="text-red">*</span></label>
						<div class="col-sm-9">
							<input type="text" name="txtNguoiky" class="form-control"onchange="unicode_username(this);">
							
						</div><!--  /.col-sm-9 -->
					</div><!--  /.form-group -->

					<div class="form-group">
						<label class="col-sm-3">Số hiệu <span class="text-red">*</span></label>
						<div class="col-sm-9">
							<input type="text" name="txtSohieu" class="form-control">
							
						</div><!--  /.col-sm-9 -->
					</div><!--  /.form-group -->

					<div class="form-group">
						<label class="col-sm-3">Ngày lập <span class="text-red">*</span></label>
						<div class="col-sm-9">
							<input type="text" name="txtNgaylap" class="form-control" id="datemask">
						
						</div><!--  /.col-sm-9 -->
					</div><!--  /.form-group -->

					<div class="form-group">
						<label class="col-sm-3">Ghi chú</label>
						<div class="col-sm-9">
							<textarea name="txtGhichu" class="form-control" rows="2"></textarea>
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

