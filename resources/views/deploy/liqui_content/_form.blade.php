<div class="modal fade" id="contractModal">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Cập nhật thông tin hợp đồng thanh lý đề tài</h4>
			</div>

			<form action="{{ route('admin.liqui_content.store') }}" method="POST" class="form-horizontal" autocomplete="off">
				<input type="hidden" name="_token" value="{{ csrf_token() }}" />
				<div class="modal-body">
					<div class="form-group">
						<label class="col-sm-3 control-label">Đề tài <span class="text-red">*</span></label>
						<div class="col-sm-9">
							<select name="txtDetai" class="form-control select2" style="width: 100%;" required="required">
								@if (!empty ($data['topic_list']))
									<option value="">--Chọn đề tài thanh lý--</option>
									@foreach ($data['topic_list'] AS $topic)
									<option value="{{ $topic->pk_imadt }}">{{ $topic->stendt }}</option>
									@endforeach
								@else
									<option value="">--Không có dữ liệu--</option>
								@endif
							</select>
						</div><!--  /.col-sm-9 -->
					</div><!--  /.form-group -->

					<div class="form-group">
						<label class="col-sm-3 control-label">Ngày lập <span class="text-red">*</span></label>
						<div class="col-sm-9">
							<input type="text" name="txtNgaylap" class="form-control" id="datemask">
						</div><!--  /.col-sm-9 -->
					</div><!--  /.form-group -->

					<div class="form-group">
						<label class="col-sm-3 control-label">Lý do <span class="text-red">*</span></label>
						<div class="col-sm-9">
							<input type="text" name="txtLydo" class="form-control">
						</div><!--  /.col-sm-9 -->
					</div><!--  /.form-group -->

					<div class="form-group">
						<label class="col-sm-3 control-label">Ghi chú</label>
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

