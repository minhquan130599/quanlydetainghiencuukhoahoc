<div class="box-body">
	<div class="form-group">
	    <label class="control-label col-sm-2">Đề tài<span class="text-red">*</span></label>
	    <div class="col-sm-10">
	    <?php
	    	$route =  Route::currentRouteName();
	    	$name = ($route == 'admin.survey_content.create') ? 'khảo sát' : 'thẩm định';
	    ?>
	    <select name="txtDetai" class="form-control">

			{!! keepSelect($data['topic_list'], 'stendt', 'pk_imadt', "--Chọn đề tài để $name--", old('txtDetai', isset($data['content']->fk_imadt) ? $data['content']->fk_imadt : null)) !!}
	    </select>
	    </div><!--  /.col-sm-10 -->
	</div>


	<div class="form-group">
	    <label class="control-label col-sm-2">Ngày duyệt <span class="text-red">*</span></label>
	    <div class="col-sm-10">
	    <input type="text" name="txtNgayDuyet" class="form-control datepick" value="{!! old('txtNgayDuyet', isset($data['content']) ? $data['content']->dngaybc : null) !!}">
	    </div>
	</div>

	<div class="form-group">
	    <label class="control-label col-sm-2">Kết quả <span class="text-red">*</span></label>
	    <div class="col-sm-10">
	        <div class="checkbox inline-check">
	        	@if (isset($data['content']))
	            <label class="radio-inline">
	                <input name="txtKetQua" value="1" type="radio" {!! old('txtKetQua', (isset($data['content']->bketqua) && $data['content']->bketqua == 1) ? 'checked' : null) !!} /> Đạt
	            </label>

	            <label class="radio-inline">
	                <input name="txtKetQua" value="0" type="radio" {!! old('txtKetQua', (isset($data['content']->bketqua) && $data['content']->bketqua == 0) ? 'checked' : null) !!} /> Không đạt
	            </label>
	            @else
	                <label class="radio-inline">
	                    <input name="txtKetQua" value="1" type="radio" checked="checked" {!! old('txtKetQua') == 1 ? 'checked' : null !!} checked="checked" /> Đạt
	                </label>

	                <label class="radio-inline">
	                    <input name="txtKetQua" value="0" type="radio" {!! old('txtKetQua') == 0 ? 'checked' : null !!} /> Không đạt
	                </label>
	            @endif
	        </div>

			<div class="checkbox">
				@if (Route::currentRouteName() == 'admin.expertise_content.create' || Route::currentRouteName() == 'admin.expertise_content.edit')
				<small>Trường hợp kết quả là <i>"Đạt"</i> thì có thể tiến hành <b>lập hợp đồng</b> cho đề tài.</small>
				@else
				<small>Trường hợp kết quả là <i>"Đạt"</i> thì có thể tiến hành <b>"Đăng ký bảo vệ"</b> cho đề tài.</small>
				@endif
			</div>
	    </div>
	</div>


	<div class="form-group">
	    <label class="col-sm-2 control-label">Nội dung <span class="text-red">*</span></label>
	    <div class="col-sm-10">
	    	<textarea name="txtNoidung" id="content" rows="5">{!! old('txtNoidung', isset($data['content']) ? $data['content']->snoidung : null) !!}</textarea>
	    </div>
	</div>

	<div class="form-group">
	    <label class="col-sm-2 control-label">Ghi chú</label>
	    <div class="col-sm-10">
	   		<textarea name="txtGhichu" width="100%" rows="5">{!! old('txtGhichu', isset($data['content']) ? $data['content']->sghichu : null) !!}</textarea>
	   	</div>
	</div>
</div><!--  /.box-body -->

<div class="box-footer">
	<span class="pull-right">
	    <strong class="text-red">*</strong> : Thông tin bắt buộc
	</span>
	<button type="submit" type="submit" class="btn btn-primary">Lưu thông tin</button>
</div><!--  /.box-footer -->

@section('style')
	 <!-- Datepick -->
  	<link rel="stylesheet" href="/plugins/datepick/jquery.datepick.css">
@endsection

@section('script')
	<script src="/plugins/ckeditor/ckeditor.js" type="text/javascript"></script>
  	<script src="/plugins/ckfinder/ckfinder.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(function(){
			$("textarea").not('#desc').each(function(){
   				CKEDITOR.replace(this, {
					toolbar: [
						['Bold','Italic','Underline','StrikeThrough','-','-','Cut','Copy','Paste','Find','Replace',
						 '-','Outdent','Indent','-','NumberedList','BulletedList','-','JustifyLeft','JustifyCenter',
						 'JustifyRight','JustifyBlock'
						],
					]
				});
			});
		}); // each
	</script>

	<script src="/plugins/datepick/jquery.datepick.js"></script>
	<script src="/app/js/plan/expertise_content.js"></script>
@stop <!-- /.script -->

