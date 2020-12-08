<div class="modal fade" id="showModal{{$key}}">
	<div class="modal-dialog">
		<form action="{{ route('admin.certify.email', $data['paginatorContent'][$key]->pk_imadt) }}" method="POST" name="formEmail" autocomplete="off" enctype="multipart/form-data">
			<input type="hidden" name="_token" value="{{ csrf_token() }}" />
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Email thông báo cho chủ nhiệm về thông tin chứng nhận đề tài</h4>
					<p><strong>Đề tài: {{ $data['paginatorContent'][$key]->stendt }}</strong> 
					<p><strong>Chủ nhiệm:</strong> {{ $data['paginatorContent'][$key]->shocvan }}
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label>Tiêu đề email <span class="text-red">*</span></label>
						<input type="text" name="txtTitle" class="form-control" required="required">
					</div>

					<div class="form-group">
						<label>Nội dung <span class="text-red">*</span></label>
						<textarea name="txtContent" class="form-control" rows="3" required="required"></textarea>
					</div>

					<div class="form-group">
						<label>File đính kèm</label>
						<input type="file" name="fAttach">
						<p class="help-block">Khuyến khích nén file dạng *.zip, *.rar để có thể gửi được nhiều file</p><!--  /.help-block -->
					</div>

					<div class="form-group sr-only">
						<label>Email chủ nhiệm</label>
						<input type="text" name="txtEmail" value="{{ $data['paginatorContent'][$key]->semail }}" />
					</div>
				</div><!-- /.modal-body -->

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
					<button type="submit" class="btn btn-primary">Gửi email</button>
				</div>
			</div>
		</form>
	</div>
</div><!-- /.Modal -->
