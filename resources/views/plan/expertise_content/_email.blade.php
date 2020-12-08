<div ng-controller="{{ !empty($controller) ? $controller : 'ExpertiseContentController' }}">
	<div class="modal fade" id="showModal">
		<div class="modal-dialog">
			<form action="{{ !empty($controller) ? route('admin.acceptance_content.email') : route('admin.expertise_content.email') }}" method="POST" name="formEmail" autocomplete="off" enctype="multipart/form-data">
				<input type="hidden" name="_token" value="{{ csrf_token() }}" />
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title">Gửi email cho chủ nhiệm</h4>
						<p><strong>Đề tài:</strong> <% leader.stendt %>
						<p><strong>Chủ nhiệm:</strong> <% leader.shocvan %>
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
							<input type="file" name="fAttach" ng-model="email.attch">
							<p class="help-block">Khuyến khích nén file dạng *.zip, *.rar để có thể gửi được nhiều file</p><!--  /.help-block -->
						</div>

						<div class="form-group sr-only">
							<label>Email chủ nhiệm</label>
							<input type="text" name="txtEmail" value="<% leader.semail %>" />
						</div>

						<div class="form-group sr-only">
							<label>Mã báo cáo tiến độ</label>
							<input type="text" name="progressID" value="<% leader.pk_imabctd %>" />
						</div>

						<div class="form-group sr-only"><!-- /.Dành cho phần nghiệm thu -->
							<label>Mã nghiệm thu cơ sở</label>
							<input type="text" name="explainID" value="<% leader.pk_imantcs %>" />
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
</div>