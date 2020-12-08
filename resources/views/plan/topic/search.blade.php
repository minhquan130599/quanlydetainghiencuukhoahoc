<div class="search">
	<form action="" method="GET" class="form-horizontal" autocomplete="off">
		<div class="row">
			<div class="col-sm-4">
				<div class="form-group">
    				<label class="col-sm-4 control-label">Đề tài</label>
    				<div class="col-sm-8">
    					<input type="text" name="keyword" class="form-control" value="{{ trim($search_data['keyword']) }}" placeholder="Tìm theo tên đề tài">
    				</div><!--  /.col-sm-8 -->
    			</div>

    			<div class="form-group">
    				<label class="col-sm-4 control-label">Lĩnh vực</label>
    				<div class="col-sm-8">
	    				<select name="specialize" class="form-control select2">
	    					<option value="">Tất cả</option>
	    					@foreach ($data['topic_field'] AS $f)
	    					<option value="{{ $f->pk_imalv }}" {{ $search_data['specialize'] == $f->pk_imalv ? 'selected' : null }} >{{ $f->stenlv }}</option>
	    					@endforeach
	    				</select>
    				</div><!--  /.col-sm-8 -->
    			</div>
			</div><!--  /.col-sm-4 -->

			<div class="col-sm-4">
    			<div class="form-group">
    				<label class="col-sm-4 control-label">Chủ nhiệm</label>
    				<div class="col-sm-8">
	    				<select name="staff" class="form-control select2">
	    					<option value="">Tất cả</option>
	    					@foreach ($data['staff_list'] AS $s)
	    					<option value="{{ $s->pk_smacanbo }}"  {{ $search_data['staff'] ==  $s->pk_smacanbo ? 'selected' : null }}>{{ $s->shodem }}</option>
	    					@endforeach
	    				</select>
    				</div><!--  /.col-sm-8 -->
    			</div>

    			<div class="form-group">
    				<label class="col-sm-4 control-label">Năm đề tài</label>
    				<div class="col-sm-8">
	    				<select name="topic_year" class="form-control select2">
	    					<option value="">Tất cả</option>
	    					@foreach ($data['topic_year'] AS $y)
	    					<option value="{{ $y->pk_smaloainam }}" {{ $search_data['topic_year'] ==  $y->pk_smaloainam ? 'selected' : null }}>{{ $y->sonam }}</option>
	    					@endforeach
	    				</select>
    				</div><!--  /.col-sm-8 -->
    			</div>
			</div><!--  /.col-sm-4 -->

			<div class="col-sm-4">
				<div class="form-group">
    				<label class="col-sm-4 control-label">Loại đề tài</label>
    				<div class="col-sm-8">
	    				<select name="topic_category" class="form-control select2">
	    					<option value="">Tất cả</option>
	    					@foreach ($data['topic_category'] AS $c)
	    					<option value="{{ $c->pk_smaldt }}" {{ $search_data['topic_category'] ==  $c->pk_smaldt ? 'selected' : null }}>{{ $c->stenldt }}</option>
	    					@endforeach
	    				</select>
    				</div><!--  /.col-sm-8 -->
    			</div>

    			<div class="form-group">
    				<label class="col-sm-4 control-label" title="Kinh phí dự kiến">K.phí d.kiến</label>
    				<div class="col-sm-8">
	    				<select name="expense" class="form-control select2">
	    					<option value="">Tất cả</option>
	    					<option value="5000000" {{ $search_data['expense'] == '5000000' ? 'selected' : null }}>Hơn 5 triệu VNĐ</option>
	    					<option value="10000000" {{ $search_data['expense'] =='10000000' ? 'selected' : null }}>Hơn 10 triệu VNĐ</option>
	    					<option value="15000000" {{ $search_data['expense'] == '15000000' ? 'selected' : null }}>Hơn 15 triệu VNĐ</option>
	    					<option value="20000000" {{ $search_data['expense'] == '20000000' ? 'selected' : null }}>Hơn 20 triệu VNĐ</option>
	    				</select>
    				</div><!--  /.col-sm-8 -->
    			</div>

    			<div class="form-group pull-right no-margin">
    				<button type="submit" class="btn btn-primary" title="Tra cứu đề tài khoa học theo tiêu chí">Tìm kiếm</button>
					<a href="{{ route('admin.topic.index') }}" class="btn btn-default" title="Hủy tìm kiếm đề tài">Hủy tìm kiếm</a>
    			</div><!--  /.form-group -->
			</div><!--  /.col-sm-4 -->
		</div><!--  /.row -->
	</form>
</div><!--  /.row --> <hr class="row" />