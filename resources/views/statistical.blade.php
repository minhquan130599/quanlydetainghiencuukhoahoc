@extends('master.main_admin')
@section('title', 'Thống kê')
@section('content-header')
    <section class="content-header">
        <h1>
	        Thống kê
   	 	</h1>
	    <ol class="breadcrumb">
	        <li class="active">Thống kê</li>
	    </ol>
    </section>
@endsection <!-- /.content-header -->

@section('content')
	<section class="content">
	    <!-- Default box -->
	    <div class="box">
	        <div class="box-header with-border">
	            <h3 class="box-title">Thống kê theo năm đề tài</h3>
	        </div><!-- /.box-header -->
			
			<div class="box-body">
				<table class="table table-hover table-bordered">
					<thead>
						<tr class="active">
							<th class="text-center">#</th>
							<th class="text-center">Loại đề tài</th>
							<th class="text-center">Đề tài <br>đã nghiệm thu</th>
							<th class="text-center">Đề tài <br>chưa nghiệm thu</th>
							<th class="text-center">Đề tài <br>chậm muộn</th>
							<th class="text-center">Đề tài <br>đề xuất/đăng ký đã hủy</th>
							<th class="text-center">Đề tài <br>đã thanh lý do không đảm bảo tiến độ</th>
						</tr>
					</thead>
					<tbody>
						@foreach ($data['topic_year'] AS $k => $v)
						<tr>
							<td class="text-center">{{ $k+1 }}</td>
							<td class="text-center">{{ $v->sonam }}</td>
							<td class="text-center">{{ isset($data['arrayNumberByYear'][$v->pk_smaloainam]) ? $data['arrayNumberByYear'][$v->pk_smaloainam] : 0 }}</td>
							<td class="text-center">{{ isset($data['arrayYetByYear'][$v->pk_smaloainam]) ? $data['arrayYetByYear'][$v->pk_smaloainam] : 0 }}</td>
							<td class="text-center">{{ isset($data['arrayDelayByYear'][$v->pk_smaloainam]) ? $data['arrayDelayByYear'][$v->pk_smaloainam] : 0 }}</td>
							<td class="text-center">{{ isset($data['arrayDestroyByYear'][$v->pk_smaloainam]) ? $data['arrayDestroyByYear'][$v->pk_smaloainam] : 0 }}</td>
							<td class="text-center">{{ isset($data['arrayLiquiByYear'][$v->pk_smaloainam]) ? $data['arrayLiquiByYear'][$v->pk_smaloainam] : 0 }}</td>
						</tr>
						@endforeach
					</tbody>
				</table>
			</div><!--  /.box-body -->
		</div><!-- /.box -->
	</section>

	<section class="content">
	    <!-- Default box -->
	    <div class="box">
	        <div class="box-header with-border">
	            <h3 class="box-title">Thống kê theo loại đề tài</h3>
	        </div><!-- /.box-header -->
			
			<div class="box-body">
				<table class="table table-hover table-bordered">
					<thead>
						<tr class="active">
							<th class="text-center">#</th>
							<th class="text-center">Loại đề tài</th>
							<th class="text-center">Đề tài đã nghiệm thu</th>
							<th class="text-center">Đề tài chưa nghiệm thu</th>
							<th class="text-center">Đề tài chậm muộn</th>
							<th class="text-center">Đề tài đề xuất/đăng ký đã hủy</th>
							<th class="text-center">Đề tài đã thanh lý do không đảm bảo tiến độ</th>
						</tr>
					</thead>
					<tbody>
						@foreach ($data['topic_category'] AS $k => $c)
						<tr>
							<td class="text-center">{{ $k+1 }}</td>
							<td>{{ $c->stenldt }}</td>
							<td class="text-center">{{ isset($data['arrayNumber'][$c->pk_smaldt]) ? $data['arrayNumber'][$c->pk_smaldt] : 0 }}</td>
							<td class="text-center">{{ isset($data['arrayAcceptanceYet'][$c->pk_smaldt]) ? $data['arrayAcceptanceYet'][$c->pk_smaldt] : 0 }}</td>
							<td class="text-center">{{ isset($data['delayArray'][$c->pk_smaldt]) ? $data['delayArray'][$c->pk_smaldt] : 0 }}</td>
							<td class="text-center">{{ isset($data['destroyArray'][$c->pk_smaldt]) ? $data['destroyArray'][$c->pk_smaldt] : 0 }}</td>
							<td class="text-center">{{ isset($data['liquidationArray'][$c->pk_smaldt]) ? $data['liquidationArray'][$c->pk_smaldt] : 0 }}</td>
						</tr>
						@endforeach
					</tbody>
				</table>
			</div><!--  /.box-body -->
		</div><!-- /.box -->
	</section>
@endsection <!-- /.content -->