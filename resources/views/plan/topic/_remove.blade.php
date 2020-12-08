<div class="modal fade" id="{{ $id }}">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">
					Thông báo cho chủ nhiệm về kết quả xét duyệt đề xuất đề tài.<br />
					<small class="text-bold">Đề tài: {{ $item->stendt }}</small> <br />
					<small class="text-bold">Chủ nhiệm: {{ $item->shocvan }}</small>
				</h4>
			</div>

			<form action="{{ route('admin.topic.notify', $item->pk_imadt) }}" method="POST" autocomplete="off" enctype="multipart/form-data">
				<div class="modal-body">
					<p>
						<i>
							Khuyến nghị: Nên gửi email nếu đề tài đề xuất không đạt yêu cầu. <br />
							Trường hợp đề tài có chỉnh sửa mà vẫn chưa đạt yêu cầu hoặc đã yêu cầu chỉnh sửa mà vẫn không chịu chỉnh sửa .
							Cán bộ có thể sử dụng chức năng hủy đề tài.
						</i>
					</p>

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
						<small class="help-block">Khuyến khích nén file trước khi chọn.</small>
					</div>

					<div class="form-group" hidden="true">
						<label>Email chủ nhiệm</label>
						<input type="text" name="txtEmail" class="form-control" value="{{ $item->semail }}">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal" title="Đóng hộp thoại">Đóng</button>
					<button type="submit" class="btn btn-primary" title="Gửi email cho chủ nhiệm">Gửi email</button>
				</div>
			</form>
		</div>
	</div>
</div>