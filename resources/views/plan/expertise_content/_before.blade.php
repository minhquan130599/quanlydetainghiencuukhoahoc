<div class="col-sm-4">
	<div class="box">
		<div class="box-header with-border">
			<h3 class="box-title">{{ $title }}</h3><!--  /.box-title -->
		</div><!--  /.box-header with-border -->
		<div class="box-body" id="show-content">
			@if (!empty($data['expertise']))
				@foreach ($data['expertise'] AS $key => $exp)
					<a class="btn {{ $key == 0 ? 'btn-success' : 'btn-primary' }} btn-block" data-toggle="modal" href='#expertise-content{{$key}}'>Ngày {{ $exp->dngaybc }}</a>
					<div class="modal fade" id="expertise-content{{$key}}">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									<h4 class="modal-title">
										Thời gian: {{ $exp->dngaybc }}
										<p>Đề tài: <small class="topic-name"></small></p>
									</h4>
								</div>
								<div class="modal-body">
									<table class="table table-hover table-bordered">
										<tr>
											<th>Ngày duyệt</th>
											<td>{!! $exp->dngaybc !!}</td>
										</tr>
										<tr>
											<th>Kết quả</th>
											<td>{!!($exp->bketqua == 1) ? 'Đạt' : 'Không đạt' !!}</td>
										</tr>
										<tr>
											<th>Nội dung</th>
											<td>{!! $exp->snoidung !!}</td>
										</tr>
										<tr>
											<th>Ghi chú</th>
											<td>{!! $exp->sghichu !!}</td>
										</tr>
									</table>
								</div><!-- /.modal-body -->
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
								</div>
							</div>
						</div>
					</div>
				@endforeach

			@else
				Không có dữ liệu
			@endif
		</div><!--  /.box-body -->

		<div class="box-footer">
			Đề tài có thể thẩm định/khảo sát <b>nhiều lần</b>. <br>
			Kết quả <b>chỉ được tính</b> vào lần thẩm định/khảo sát <b>cuối cùng.</b>
		</div><!--  /.box-footer -->
	</div><!--  /.box -->
</div><!--  /.col-sm-4 -->
