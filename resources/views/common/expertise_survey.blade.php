    <div class="box-body">
    	@include('common.expertise_survey_search', ['search_data' => $data['search_data']])
    	@if (count($data['paginatorContent']))
    	<div class="table-responsive">
    		<center class="text-center text-danger text-bold">
	       		Đề tài đã có nội dung {{ $name }} thì không thể cập nhật
	       		vào hội đồng {{ $name }} khác
	       	</center> <br />

	       	<table class="table table-bordered table-hover">
	       	<thead>
	       		<tr class="active">
	       			<th>#</th>
	       			<th width="20%">Hội đồng {{ $name }}</th>
	       			<th class="text-center">Quyết định</th>
	       			<th class="text-center">Ngày thành lập</th>
	       			<th class="text-center">Ngày <br>làm việc</th>
	       			<th>Đề tài khoa học</th>
	       			<th width="9%" class="text-center">Tác vụ</th>
	       		</tr>
	       	</thead>
	       	<tbody>
	       		@foreach ($data['paginatorContent'] AS $key => $val)
	       		<tr>
	       			<td>{{ numeric_order($data['page'], $key, 15) }}</td>
	       			<td>{{ $val->stenhd }}
	       				<p>Mã số: <strong>{{ $val->smahoidong }}</strong></p>
	       			</td>
	       			<td class="text-center">{{ $val->squyetdinh }}</td>
	       			<td class="text-center">{{ $val->dngaythanhlap }}</td>
	       			<td class="text-center">{{ $val->dngaylamviec }}</td>
	       			<td>{!! str_replace('*|*', '<br/> - ', '- ' . $topicArray[$val->pk_imahd]) !!}</td>
	       			<td class="text-center">
	       				<div class="btn-group" role="group">
						  <a href="{{ route($redirectRoute, $val->pk_imahd) }}" class="btn btn-default btn-sm" title="Chỉnh sửa thông tin hội đồng"><span class="glyphicon glyphicon-pencil"></span></a>
						  <a class="btn btn-default btn-sm member" data-value="{{ $val->pk_imahd }}" data-toggle="modal" href='#showModal' title="Cập nhật thành viên hội đồng"><span class="glyphicon glyphicon-user"></span></a>
						</div>
	       			</td>
	       		</tr>
	       		@endforeach
	       	</tbody>
	       </table>
	   	</div><!-- /.table-resposive -->

	   	@else
			Không có dữ liệu
	   	@endif
    </div><!-- /.box-body -->

    @include('plan.expertise._modal', ['data' => $data])
    @include('blocks.box_footerv2', ['data' => $data, 'search_data' => $data['search_data']])
  </div>
  <!-- /.box -->
</section><!-- /.content -->