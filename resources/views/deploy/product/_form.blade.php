<section class="content">
    <div class="box box-info">
        <div class="box-header with-border">
            <h3 class="box-title">Cập nhật sản phẩm đề tài khoa học</h3>
        </div><!--/.box-header-->

        <div class="box-body">
            <div class="form-group">
                <label>Loại sản phẩm <span class="text-red">*</span></label>
                <select name="pk_imalsp" class="form-control select2">
                    {{ keepSelect($data['product_category'], 'stenloaisp', 'pk_imalsp', '--Chọn loại sản phẩm--', old('pk_imalsp', isset($product) ? $product->pk_imalsp : null)) }}
                </select>
            </div> <hr class="row" />

            <div class="form-group">
                <label>Đề tài khoa học <span class="text-red">*</span></label>
                <select name="pk_imadt" id="input" class="form-control select2">
                    {{ keepSelect($data['topic_list'], 'stendt', 'pk_imadt', '--Chọn đề tài khoa học--', old('pk_imadt', isset($product) ? $product->pk_imadt : null)) }}
                </select>
            </div> <hr class="row" />

            <div class="form-group">
                <label>Tên sản phẩm <span class="text-red">*</span></label>
                <input name="stensp" class="form-control" value="{{ old('stensp', isset($product) ? $product->stensp : null) }}" type="text">
            </div> <hr class="row" />

            <div class="form-group">
                <label>Thời gian công bố <span class="text-red">*</span></label>
                <input name="sthoigiancongbo" class="form-control datepick" value="{{ old('sthoigiancongbo', isset($product) ? $product->sthoigiancongbo : null) }}" type="text">
            </div> <hr class="row" />

            <div class="form-group">
                <label>Nơi công bố(tỉnh, thành phố, quốc gia) <span class="text-red">*</span></label>
                <input name="snoicongbo" class="form-control" value="{{ old('snoicongbo', isset($product) ? $product->snoicongbo : null) }}" type="text" data-role="tagsinput">
            </div> <hr class="row" />

            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Tóm tắt về sản phẩm <span class="text-red">*</span></label>
                        <textarea name="stomtat" class="form-control" rows="3">
                            {{ old('stomtat', isset($product) ? $product->stomtat : null) }}
                        </textarea>
                    </div>
                </div><!-- /.col-sm-6 -->

                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Định danh sản phẩm(đã xuất hiện trên bài báo, tạp chí nào? Trích dẫn)</label>
                        <textarea name="sdinhdanh" class="form-control" rows="3">
                            {{ old('sdinhdanh', isset($product) ? $product->sdinhdanh : null) }}
                        </textarea>
                    </div>
                </div><!-- /.col-sm-6 -->
            </div><!-- /.row --> <hr class="row" />


            <div class="form-group">
                <label>Ghi chú</label>
                <textarea name="sghichu" id="input" class="form-control" rows="3" required="required">
                    {{ old('sghichu', isset($product) ? $product->sghichu : null) }}
                </textarea>
            </div>
        </div><!-- /.box-boy -->

        <div class="box-footer">
            <span class="pull-right">
                <strong class="text-red">*</strong> : Thông tin bắt buộc <br>
            </span>
            <button type="submit" class="btn btn-primary">Lưu thông tin</button>
        </div><!--  /.panel-footer -->
    </div><!--/.box-->
</section><!--/.content-->

@section('style')
    <link rel="stylesheet" href="/plugins/bootstrap-tagsinput/src/bootstrap-tagsinput.css" />
@endsection


@section('script')
<script type="text/javascript" src="/plugins/bootstrap-tagsinput/src/bootstrap-tagsinput.js"></script>
<script type="text/javascript">
    $(function(){
        $("textarea").each(function(){
            CKEDITOR.replace(this, {
                toolbar: [
                    ['Bold','Italic','Underline','StrikeThrough','-','-','Cut','Copy','Paste','Find','Replace',
                     '-','Outdent','Indent','-','NumberedList','BulletedList','-','JustifyBlock','-','Image','-','Link'
                    ],
                ]
            });
        });
    }); // each
</script>
@endsection