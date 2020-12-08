<div class="box-body">
    <input type="hidden" name="_token" value="{{ csrf_token() }}" />
    <div class="row">
        <div class="col-sm-6">
            <div class="form-group">
                <label>Tên đơn vị<span class="text-red">*</span></label>
                <input type="text" class="form-control" name="txtTendonvi" placeholder="Tên đơn vị" value="{!! old('txtTendonvi',isset($unit->stendv) ? $unit->stendv : null) !!}" required="required">
            </div><!--  /.form-group -->

            <div class="form-group">
                <label>Cấp đơn vị <span class="text-red">*</span></label>
                <select name="txtCapdonvi" class="form-control select2" required="required">
                    {!! keepSelect($data, 'stencapdv', 'pk_imacapdv', '--Chọn cấp đơn vị--',old('txtCapdonvi', isset($unit->pk_imacapdv) ? $unit->pk_imacapdv : null)) !!}
                </select>
            </div><!--  /.form-group -->

            <div class="form-group">
                <label>Địa chỉ <span class="text-red">*</span></label>
                <input type="text" name="txtDiachi" class="form-control" placeholder="Địa chỉ" value="{!! old('txtDiachi',isset($unit->sdiachi) ? $unit->sdiachi : '56 Vũ Trọng Phụng, Thanh Xuân, Hà Nội') !!}" required="required" />
            </div><!--  /.form-group -->

            <div class="form-group">
                <label>Điện thoại </label>
                <input type="text" name="txtSodienthoai" class="form-control" placeholder="Điện thoại" value="{!! old('txtSodienthoai',isset($unit->sdienthoai) ? $unit->sdienthoai : 'Đang cập nhật') !!}"  />
            </div><!--  /.form-group -->

            <div class="form-group">
                <label>Fax</label>
                <input type="text" name="txtFax" class="form-control" placeholder="Fax" value="{!! old('txtFax',isset($unit->sfax) ? $unit->sfax : null) !!}" />
            </div><!--  /.form-group -->

        </div><!--  /.col-sm-6 -->

        <div class="col-sm-6">
            <div class="form-group">
                <label>Email</label>
                <input type="text" class="form-control" name="txtEmail" placeholder="Email" value="{!! old('txtEmail',isset($unit->semail) ? $unit->semail : null) !!}">
            </div><!-- /.form group -->

            <div class="form-group">
                <label>Web</label>
                <input type="text" class="form-control" name="txtWeb" placeholder="Web" value="{!! old('txtWeb',isset($unit->sweb) ? $unit->sweb : null) !!}">
            </div><!--  /.form-group -->


            <div class="form-group">
                <label>Đơn vị chủ quản</label>
                <input type="text" class="form-control" name="txtDonvichuquan" placeholder="Đơn vị chủ quản" value="{!! old('txtDonvichuquan',isset($unit->sdvchuquan) ? $unit->sdvchuquan : 'HỌC VIỆN KỸ THUẬT MẬT MÃ') !!}">
            </div><!--  /.form-group -->

            <div class="form-group">
                <label>Người liên hệ</label>
                <input type="text" class="form-control" name="txtNguoilienhe" placeholder="Người liên hệ" value="{!! old('txtNguoilienhe',isset($unit->snguoilienhe) ? $unit->snguoilienhe : null) !!}">
            </div><!--  /.form-group -->

            <div class="form-group">
                <label>Ghi chú</label>
                <textarea name="txtGhichu" class="form-control" rows="1">{!! old('txtGhichu',isset($unit->sghichu) ? $unit->sghichu : null) !!}</textarea>
            </div><!--  /.form-group -->

        </div><!--  /.col-sm-6 -->
    </div><!-- /.row -->
</div><!--/.box-body-->

<div class="box-footer">
   <span class="pull-right">
        <strong class="text-red">*</strong> : Thông tin bắt buộc <br>
    </span>
    <button type="submit" type="submit" class="btn btn-primary">Lưu thông tin</button>
</div><!-- /.box-footer -->

@section('script')
@endsection