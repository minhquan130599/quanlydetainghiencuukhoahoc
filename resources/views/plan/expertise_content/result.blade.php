@foreach ($data AS $key => $value)
<a title="Xem chi tiết" class="btn {{ $key == 0 ? 'btn-success' : 'btn-primary' }} btn-block btn-result" data-toggle="modal" href="#expertise-content{{ $key }}">Ngày {{ $value['dngaybc'] }}</a>
<div class="modal fade" id="expertise-content{{ $key }}">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">
					Ngày {{ $value['dngaybc'] }}
					<p>Đề tài: <small class="topic-name">{{ $value['stendt'] }}</small></p>
				</h4>
			</div>
			<div class="modal-body">
				<table class="table table-hover table-bordered">
					<tr>
						<th>Ngày duyệt</th>
						<td>{!! $value['dngaybc'] !!}</td>
					</tr>
					<tr>
						<th>Kết quả</th>
						<td>{!! $value['bketqua'] == 1 ? 'Đạt' : 'Không đạt' !!}</td>
					</tr>
					<tr>
						<th>Nội dung</th>
						<td>{!! $value['snoidung'] !!}</td>
					</tr>
					<tr>
						<th>Ghi chú</th>
						<td>{!! $value['sghichu'] !!}</td>
					</tr>
				</table>
			</div><!-- /.modal-body -->
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" title="Đóng hộp thoại">Đóng</button>
			</div>
		</div>
	</div>
</div>
@endforeach