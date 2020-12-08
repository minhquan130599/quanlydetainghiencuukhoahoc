<div class="search">
	<form action="" method="GET" class="form-horizontal" autocomplete="off">
		<div class="row">
			<div class="col-sm-4">
    			<div class="form-group">
    				<label class="col-sm-4 control-label">Tiêu chí tìm:</label>
    				<div class="col-sm-8">
	    				<select name="criteria" class="form-control">
	    					<option value="">Tất cả</option>
	    					<option value="hoten" {{ $search_data['criteria'] == 'hoten' ? 'selected' : null }}> Họ tên cán bộ </option>
	    					<option value="ngaysinh" {{ $search_data['criteria'] == 'ngaysinh' ? 'selected' : null }}> Ngày sinh</option>
	    					<option value="dienthoai" {{ $search_data['criteria'] == 'dienthoai' ? 'selected' : null }}>Điện thoại</option>
	    					<option value="email" {{ $search_data['criteria'] == 'email' ? 'selected' : null }}>Email</option>
	    					<option value="diachi" {{ $search_data['criteria'] == 'diachi' ? 'selected' : null }}>Địa chỉ, quên quán</option>
	    				</select>
    				</div><!--  /.col-sm-8 -->
    			</div>

    			<div class="form-group">
    				<label class="col-sm-4 control-label">Nhóm cán bộ</label>
    				<div class="col-sm-8">
	    				<select name="staff_group" class="form-control">
	    					<option value="">Tất cả</option>
	    					@foreach ($data['staff_group'] AS $sg)
	    					<option value="{{ $sg['pk_imanhomcb'] }}" {{ $sg['pk_imanhomcb'] == $search_data['staff_group'] ? 'selected' : null }}>{{ $sg['stennhomcb'] }}</option>
	    					@endforeach
	    				</select>
    				</div><!--  /.col-sm-8 -->
    			</div>
			</div><!--  /.col-sm-4 -->

			<div class="col-sm-4">
				<div class="form-group">
    				<label class="col-sm-4 control-label">Từ khóa</label>
    				<div class="col-sm-8">
    					<input type="text" name="keyword" class="form-control" value="{{ trim($search_data['keyword']) }}" placeholder="Tìm kiếm theo tiêu chí">
    				</div><!--  /.col-sm-8 -->
    			</div>

    			<div class="form-group">
    				<label class="col-sm-4 control-label">Đơn vị c.tác</label>
    				<div class="col-sm-8">
	    				<select name="unit" class="form-control">
	    					<option value="">Tất cả</option>
	    					@foreach ($data['unit_list'] AS $unit)
	    					<option value="{{ $unit['pk_imadv'] }}" {{ $unit['pk_imadv'] == $search_data['unit'] ? 'selected' : null }}>{{ $unit['stendv'] }}</option>
	    					@endforeach
	    				</select>
    				</div><!--  /.col-sm-8 -->
    			</div>
			</div><!--  /.col-sm-4 -->

			<div class="col-sm-4">
				<div class="form-group">
    				<label class="col-sm-4 control-label">Giới tính</label>
    				<div class="col-sm-8">
	    				<select name="gender" class="form-control">
	    					<option value="">Tất cả</option>
	    					<option value="Nam" {{ $search_data['gender'] == 'Nam' ? 'selected' : null }}>Nam</option>
	    					<option value="Nữ" {{ $search_data['gender'] == 'Nữ' ? 'selected' : null }}>Nữ</option>
	    					<option value="Khác" {{ $search_data['gender'] == 'Khác' ? 'selected' : null }}>Khác</option>
	    				</select>
    				</div><!--  /.col-sm-8 -->
    			</div>

    			<div class="form-group">
    				<label class="col-sm-4 control-label">Chuyên môn</label>
    				<div class="col-sm-8">
	    				<select name="specialize" class="form-control">
	    					<option value="">Tất cả</option>
	    					@foreach ($data['specialize_list'] AS $s)
	    					<option value="{{ $s['pk_imacn'] }}" {{ $s['pk_imacn'] == $search_data['specialize'] ? 'selected' : null }}>{{ $s['stencn'] }}</option>
	    					@endforeach
	    				</select>
    				</div><!--  /.col-sm-8 -->
    			</div>

    			<div class="form-group pull-right no-margin">
    				<button type="submit" class="btn btn-primary" title="Tra cứu cán bộ theo tiêu chí">Tìm kiếm</button>
					<a href="{{ route('admin.staff.index') }}" class="btn btn-default" title="Hủy bỏ tìm kiếm">Hủy tìm kiếm</a>
    			</div><!--  /.form-group -->
			</div><!--  /.col-sm-4 -->
		</div><!--  /.row -->
	</form>
</div><!--  /.row --> <hr class="row" />