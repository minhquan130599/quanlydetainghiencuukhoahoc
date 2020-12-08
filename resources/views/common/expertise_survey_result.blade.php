<div class="box-body">
  @if (count ($data['paginatorContent']))
	<div class="table-responsive">
       	<table class="table table-bordered table-hover">
       	<thead>
       		<tr class="active">
       			<th>#</th>
                <th>Đề tài khoa học</th>
                <th class="text-center">Hội đồng {{ $name }}</th>
                <th class="text-center">Ngày <br>báo cáo</th>
                <th class="text-center">Nội dung {{ $name }}</th>
                <th class="text-center">Kết quả</th>
                <th class="text-center">Tác vụ</th>
       		</tr>
       	</thead>
       	<tbody>
       		@foreach ($data['paginatorContent'] AS $key => $val)
       		<tr {{ $val->bsendmail == 1 ? 'class=success' : '' }}>
       			<td>{{ numeric_order($data['page'], $key, 15) }}</td>
       			<td>{{ $val->stendt }}</td>
       			<td>{{ $val->stenhd }}</td>
       			<td class="text-center">{{ $val->dngaybc }}</td>
                <td class="text-center"><a data-toggle="popover" data-trigger="hover" data-content="{{ $val->snoidung }}" data-placement="left" data-html="true">Chi tiết</a></td>
       			<td class="text-center">{{ $val->bketqua == 1 ? 'Đạt' : 'Không đạt' }}</td>

                @if ($val->pk_imatt == $topic_status)
       			<td class="text-center" width="10%">
       				<div class="btn-group" role="group">
					  <a href="{{ route($redirectRoute, $val->pk_imabctd) }}" class="btn btn-default btn-sm" title="Chỉnh sửa nội dung {{ $name }}"><span class="glyphicon glyphicon-pencil"></span></a>
					  <a class="btn btn-default btn-sm" data-toggle="modal" href='#showModal' data-value="{{ $val->pk_imabctd }}" ng-click="getLeader({{$val->pk_imabctd}})" title="Gửi email báo kết quả cho chủ nhiệm"><span class="glyphicon glyphicon-envelope"></span></a>
					</div>
       			</td>
                @else
                <td class="text-center">Đề tài đã {{ $name == 'thẩm định' ? 'khảo sát' : 'đăng ký bảo vệ'}}</td>
                @endif

       		</tr>
       		@endforeach
       	</tbody>
       </table>

        <div class="pull-right">
       <button type="button" class="btn btn-success" style="height: 24px; background-color: #d0e9c6;"></button> : Đã thông báo kết quả
       </div><!--  /.pull-right -->
   </div><!-- /.table-resposive -->
  @else
    Không có dữ liệu (Đề tài, hội đồng đã chọn chưa có nội dung {{ $name }})
  @endif
</div><!-- /.box-body -->