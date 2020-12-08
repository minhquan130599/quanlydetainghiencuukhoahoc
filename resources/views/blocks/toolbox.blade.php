<div class="box-tools">
	<form action="{{ $route }}" method="GET" autocomplete="off">
	    <div class="input-group input-group-sm" style="width: 250px;">
	      	<input type="text" name="keyword" class="form-control pull-right" value="{{ trim($keyword) }}" placeholder="Tìm kiếm...">
	      	<div class="input-group-btn">
	        	<button type="submit" class="btn btn-default" title="Tìm kiếm">
	        		<span class="glyphicon glyphicon-search"></span>
	        	</button>

	        	<a title="Làm mới" href="{{ $route }}" class="btn btn-default">
	        		<span class="glyphicon glyphicon-refresh"></span>
	        	</a>

	        	<!-- Nếu là newActivity thì sẽ chuyển sang 1 trang mới -->
	        	@if ($category['activity'] == 'newActivity')
	        	<a title="{{ $category['title'] }}" href="{{ $category['url'] }}" class="btn btn-default"><span class="glyphicon glyphicon-plus"></span></a>
	        	@else
	        		<!-- Ngược lại thì show 1 modal & include nội dung modal -->
					<a class="btn btn-default" data-toggle="modal" href='#contractModal'><span class="glyphicon glyphicon-plus"></a>
	        	@endif
	      	</div><!-- /.group -->
	    </div>
	</form>
</div>

<!-- /.Nếu là modal thì include ra chỗ này sẽ không vỡ -->
@if ($category['activity'] != 'newActivity')
	@include($category['activity'], ['data' => $data])
@endif
