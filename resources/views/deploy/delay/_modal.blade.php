<div class="modal fade" id="showModal{{$key->pk_imadt}}">
	<div class="modal-dialog">
		<form action="{{ route('admin.delay.email') }}" method="POST" name="formEmail" autocomplete="off" enctype="multipart/form-data" class="form-vertical">
			<input type="hidden" name="_token" value="{{ csrf_token() }}" />
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Email thông báo cho chủ nhiệm về việc chậm muộn đề tài</h4>
					<hr>
					<p><strong>Đề tài:{{ $key->stendt }}</strong>
					<p><strong>Chủ nhiệm:{{ $key->shocvan }}</strong>
				</div>
				<div class="modal-body">
						<label>Tiêu đề email <span class="text-red">*</span></label>
						<input type="text" name="txtTitle" class="form-control" required="required" style="width: 100%">
					<br>
						<label>Nội dung <span class="text-red">*</span></label>
						<textarea name="txtContent" class="form-control" rows="4" required="required" style="width: 100%"></textarea>
						<label>File đính kèm</label>
						<input type="file" name="fAttach">
						<p class="help-block">Khuyến khích nén file dạng *.zip, *.rar để có thể gửi được nhiều file</p>
					<div class="form-group sr-only">
						<label>Email chủ nhiệm</label>
						<input type="text" name="txtEmail" value="{{ $key->semail }}" />
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
