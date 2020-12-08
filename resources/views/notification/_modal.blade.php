<div class="modal fade" id="showModal">
	<div class="modal-dialog">
		<form action="" method="POST" name="formEmail" autocomplete="off" enctype="multipart/form-data">
			<input type="hidden" name="_token" value="{{ csrf_token() }}" />
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Gửi thông báo cho cán bộ</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="form-group">
							<label for="">Nội dung</label>
							<input type="text" class="form-control">
						</div>
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
