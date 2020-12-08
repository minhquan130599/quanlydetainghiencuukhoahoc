<div class="box-body">
	@if (Route::currentRouteName() != 'admin.acceptance_content.edit')
	<div class="form-group">
		<label class="control-label col-sm-2" title="Đề tài khoa học">Đề tài khoa học <span class="text-red">*</span></label>
		<div class="col-sm-10">
			<select name="txtDetai" class="form-control select2">
				{{ keepSelect($data['topic'], 'stendt', 'pk_imadt', '--Chọn đề tài nghiệm thu--', old('txtDetai', isset($explain) ? $explain->fk_imadt : null)) }}
			</select>
		</div>
	</div> <hr class="row" />
	@endif

	<div class="form-group">
		<label class="control-label col-sm-2" title="Số quyết định nghiệm thu cơ sở">Số.QĐNTCS <span class="text-red">*</span></label>
		<div class="col-sm-10">
			<input type="text" name="txtSoQDNTCS" class="form-control" value="{{ old('txtSoQDNTCS', isset($explain) ? $explain->ssoqdntcs : null) }}" onchange="upperCase(this);" required="required">
		</div>
	</div>

	<div class="form-group">
		<label class="control-label col-sm-2" title="Điểm nghiệm thu cơ sở">Điểm NTCS <span class="text-red">*</span></label>
		<div class="col-sm-10">
			<input type="text" name="txtDiemNTCS" class="form-control" value="{{ old('txtDiemNTCS', isset($explain) ? $explain->fdiemntcs : null) }}" required="required">
			<p class="help-block">Nếu điểm có phần thập phân thì được ngăn cách bằng dấu chấm. (VD: <b>9.5 thay vì 9,5</b>)</p><!--  /.help-block -->
		</div>
	</div>

	<div class="form-group row">
		<label class="control-label col-sm-2" title="Ngày nghiệm thu cơ sở">Ngày.NTCS <span class="text-red">*</span></label>
		<div class="col-sm-10">
			<input type="text" name="txtNgayNTCS" class="form-control datepick" value="{{ old('txtNgayNTCS', isset($explain) ? $explain->dngayntct : null) }}" required="required" placeholder="ngày/tháng/năm">
		</div>
	</div> <hr class="row" />

	<div class="form-group row">
		<label class="control-label col-sm-2" title="Số quyết định nghiệm thu chương trình">Số.QĐNTCT <span class="text-red">*</span></label>
		<div class="col-sm-10">
			<input type="text" name="txtSoQDNTCT" class="form-control" value="{{ old('txtSoQDNTCT', isset($explain) ? $explain->ssoqdntct : null) }}" required="required">
		</div>
	</div>

	<div class="form-group row">
		<label class="control-label col-sm-2" title="Ngày quyết định nghiệm thu chương trình">Ngày.QĐNTCT <span class="text-red">*</span></label>
		<div class="col-sm-10">
			<input type="text" name="txtNgayQDNTCT" class="form-control datepick" value="{{ old('txtNgayQDNTCT', isset($explain) ? $explain->dngayqdntct : null) }}" required="required" placeholder="ngày/tháng/năm">
		</div>
	</div>

	<div class="form-group row">
		<label class="control-label col-sm-2" title="Ngày nghiệm thu chương trình">Ngày.NTCT <span class="text-red">*</span></label>
		<div class="col-sm-10">
			<input type="text" name="txtNgayNTCT" class="form-control datepick" value="{{ old('txtNgayNTCT', isset($explain) ? $explain->dngayntct : null) }}" required="required" placeholder="ngày/tháng/năm">
		</div>
	</div>

	<div class="form-group row">
		<label class="control-label col-sm-2" title="Điểm thông báo nghiệm thu chương trình">Điểm.TBNTCT <span class="text-red">*</span></label>
		<div class="col-sm-10">
			<input type="text" name="txtDiemTBNTCT" class="form-control" value="{{ old('txtDiemTBNTCT', isset($explain) ? $explain->fdiemtbntct : null) }}" required="required">
			<p class="help-block">Nếu điểm có phần thập phân thì được ngăn cách bằng dấu chấm. (VD: <b>9.5 thay vì 9,5</b>)</p><!--  /.help-block -->
		</div>
	</div>

	<div class="form-group row">
		<label class="control-label col-sm-2" title="Kết quả nghiệm thu chương trình">K.Quả NTCT <span class="text-red">*</span></label>
		<div class="col-sm-10">
			<select name="txtXeploai" class="form-control">
				{{ keepSelect($data['rate'], 'stendmxeploai', 'pk_imadmxeploai', '--Chọn kết quả xếp loại--', old('txtXeploai', isset($explain) ? $explain->fk_imadmxeploai : null)) }}
	    	</select>
		</div><!--  /.col-sm-12 xeploai-->
	</div> <hr class="row" />

	<div class="form-group row">
		<label class="control-label col-sm-2" title="Ghi chú">Ghi chú</label>
		<div class="col-sm-10">
			<textarea name="txtGhichu" class="form-control" rows="3" width="100%">{{ old('txtGhichu', isset($explain) ? $explain->sghichu : null) }}</textarea>
		</div>
	</div>
</div><!-- /.box-body -->

<div class="box-footer">
	<button type="submit" name="submit" value="submit" class="btn btn-primary">Lưu kết quả</button>
</div><!--  /.box-footer -->

