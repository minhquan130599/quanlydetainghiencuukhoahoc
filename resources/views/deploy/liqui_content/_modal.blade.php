<div class="modal fade" id="liquiModal{{$key}}">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Cập nhật thông tin hợp đồng thanh lý đề tài</h4>
				<p>Đề tài: {{ $item->stendt }}</p>
			</div>

			<form action="{{ route('admin.liqui_content.update', $item->pk_imadt) }}" method="POST" class="form-horizontal" autocomplete="off">
				<input type="hidden" name="_token" value="{{ csrf_token() }}" />
				<div class="modal-body">
					<div class="form-group">
						<label class="col-sm-3 control-label">Ngày lập <span class="text-red">*</span></label>
						<div class="col-sm-9">
							<input type="text" name="txtNgaylap" class="form-control" id="datemask2" value="{{ $item->dngaytl }}">
						</div><!--  /.col-sm-9 -->
					</div><!--  /.form-group -->

					<div class="form-group">
						<label class="col-sm-3 control-label">Lý do <span class="text-red">*</span></label>
						<div class="col-sm-9">
							<input type="text" name="txtLydo" class="form-control" value="{{ $item->slydo }}">
						</div><!--  /.col-sm-9 -->
					</div><!--  /.form-group -->

					<div class="form-group">
						<label class="col-sm-3 control-label">Ghi chú</label>
						<div class="col-sm-9">
							<textarea name="txtGhichu" class="form-control" rows="2">{{ $item->sghichu }}</textarea>
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

