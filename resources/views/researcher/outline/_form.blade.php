<div class="box-body">
    <input type="hidden" name="_token" value="{{ csrf_token() }}" />
    <div class="row">
        <div class="col-sm-6">
            <div class="form-group">
                <label>Tên đề tài NCKH <span class="text-red">*</span></label>
                <input type="text" class="form-control" name="txtTenDetai" value="{!! old('txtTenDetai', isset($outline->stendt) ? $outline->stendt : null) !!}">
            </div><!--  /.form-group -->

            <div class="form-group">
                <label>Kinh phí dự kiến</label>
                <input type="text" name="txtKinhphi" class="form-control" placeholder="Vui lòng nhập giá trị số"  value="{!! old('txtKinhphi', isset($outline->fcptong) ? $outline->fcptong : null) !!}" />
            </div><!--  /.form-group -->

            <div class="form-group">
                <label>Lĩnh vực nghiên cứu  <span class="text-red">*</span></label>
                <select name="txtLinhvuc" class="form-control">
                    {!! keepSelect($data['outline_field'], 'stenlv', 'pk_imalv', '--Chọn lĩnh vực--',old('txtLinhvuc', isset($outline->pk_imalv) ? $outline->pk_imalv : null)) !!}
                </select>
            </div><!--  /.form-group -->

            <div class="form-group">
                <label>Tính cấp thiết  <span class="text-red">*</span></label>
                <textarea name="txtCapthiet" class="form-control" rows="3">{!! old('txtCapthiet', isset($outline->scapthiet) ? $outline->scapthiet : null) !!}</textarea>
            </div><!--  /.form-group -->

            <div class="form-group">
                <label>Nội dung đề tài <span class="text-red">*</span></label>
                <textarea name="txtNoidung" class="form-control" rows="3">{!! old('txtNoidung', isset($outline->snoidungdaicuong) ? $outline->snoidungdaicuong : null) !!}</textarea>
            </div><!--  /.form-group -->

            <div class="form-group">
                <label>Kết cấu đề tài  <span class="text-red">*</span></label>
                <textarea name="txtKetcau" class="form-control" rows="3">{!! old('txtKetcau', isset($outline->sketcaudetai) ? $outline->sketcaudetai : null) !!}</textarea>
            </div><!--  /.form-group -->
        </div><!--  /.col-sm-6 -->

        <div class="col-sm-6">
            <div class="form-group">
                <label>Thời gian thực hiện đề tài <span class="text-red">*</span></label>
                <input type="text" class="form-control" name="txtThoigianThuchien" id="reservation" value="{!! old('txtThoigianThuchien', isset($outline) ? sprintf('%s - %s', date('d/m/Y', $outline->dngaybd), date('d/m/Y', $outline->dngaykt)) : null) !!}">
            </div><!-- /.form group -->

            <div class="form-group">
                <label>Loại đề tài  <span class="text-red">*</span></label>
                <select name="txtLoaiDetai" class="form-control">
                    {!! keepSelect($data['outline_category'], 'stenldt', 'pk_smaldt', '--Chọn loại đề tài--', old('txtLoaiDetai', isset($outline->pk_smaldt) ? $outline->pk_smaldt : null)) !!}
                </select>
            </div><!--  /.form-group -->

            <div class="form-group">
               <div class="row">
                    <div class="col-sm-6">
                        <label>Loại hình <span class="text-red">*</span></label>
                        <select name="txtLoaihinh" class="form-control">
                            {!! keepSelect($data['outline_type'], 'stenlh', 'pk_smalh', '--Chọn loại hình--', old('txtLoaihinh', isset($outline->pk_smalh) ? $outline->pk_smalh : null)) !!}
                        </select>
                    </div><!--  /.col-sm-6 -->

                    <div class="col-sm-6">
                        <label>Năm đề tài <span class="text-red">*</span></label>
                        <select name="txtNamDetai" class="form-control">
                            {!! keepSelect($data['outline_year'], 'sonam', 'pk_smaloainam', '--Chọn năm đề tài--', old('txtNamDetai', isset($outline->fk_smaloainam) ? $outline->fk_smaloainam : null)) !!}
                        </select>
                    </div><!--  /.col-sm-6 -->
                </div><!--  /.row -->
            </div><!--  /.form-group -->


            <div class="form-group">
                <label>Mục tiêu nghiên cứu <span class="text-red">*</span></label>
                <textarea name="txtMuctieu" class="form-control" rows="3">{!! old('txtMuctieu', isset($outline->smuctieu) ? $outline->smuctieu : null) !!}</textarea>
            </div><!--  /.form-group -->

            <div class="form-group">
                <label>Phương pháp nghiên cứu  <span class="text-red">*</span></label>
                <textarea name="txtPhuongphap" class="form-control" rows="3">{!! old('txtPhuongphap', isset($outline->sphuongphap) ? $outline->sphuongphap : null) !!}</textarea>
            </div><!--  /.form-group -->

            <div class="form-group">
                <label>Sản phẩm &amp; địa chỉ ứng dụng <span class="text-red">*</span></label>
                <textarea name="txtSanpham" class="form-control" rows="3">{!! old('txtSanpham', isset($outline->ssanpham) ? $outline->ssanpham : null) !!}</textarea>
            </div><!--  /.form-group -->
        </div><!--  /.col-sm-6 -->
        <div class="col-sm-10">
            <div class="form-group">
                <label>Danh sách cán bộ tham gia đề tài<span class="text-red">*</span></label>
                    <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label class="control-label col-sm-2">Đơn vị <span class="text-red required">*</span></label>
                                <div class="col-sm-10">
                                    <select name="txtUnit" id="chondonvi" class="form-control" required="required">
                                        <option value="" selected="selected">--Chọn đơn vị--</option>
                                        <option value="all">Tất cả</option>
                                        @foreach ($data['unit_list'] AS $unit)
                                            <option value="{{ $unit->pk_imadv }}">{{ $unit->stendv }}</option>
                                        @endforeach
                                    </select>
                                </div><!-- /.col-sm-10 -->
                            </div><!--  /.form-group -->
                        </div>
                    </div> <!-- /.row --> 

                    <hr class="row divider" />

                    <div class="row">
                        <!-- Từ danh sách đơn vị => Lấy ra danh sách cán bộ -->
                        <div class="col-sm-5">
                            <label>Danh sách cán bộ</label>
                            <input type="text" name="search" class="form-control" width="90%" placeholder="Tìm kiếm cán bộ..." /> <br />
                            <div class="pre-scrollable">
                                <table class="table table-bordered table-hover" id="not-joined">
                                    <thead>
                                        <tr class="active">
                                            <th class="text-center">
                                                <input type="checkbox" id="notJoinList" class="sthamgia">
                                            </th>
                                            <th>Cán bộ</th>
                                            <th>Vai trò</th>
                                        </tr>
                                    </thead>

                                    <tbody class="left-staff"></tbody>
                                </table>
                            </div>
                        </div> <!-- /.col-5 -->

                        <!-- Nút chuyển -->
                        <div class="col-sm-2 text-center">
                            <button type="button" class="btn btn-primary" name="move">
                                <span class="glyphicon glyphicon-arrow-right"></span>
                            </button> <br /><br />
                            
                            <button type="button" class="btn btn-primary" name="remove">
                                <span class="glyphicon glyphicon-arrow-left"></span>
                            </button>
                        </div> <!-- /.col-2 -->

                        <!-- Danh sách cán bộ được chọn làm thành viên hội đồng -->
                        <div class="col-sm-5">
                            <label>Danh sách cán bộ của hội đồng</label>
                            <input type="text" name="search" class="form-control" width="90%" placeholder="Tìm kiếm cán bộ..." /> <br />

                            <div class="pre-scrollable">
                                <table class="table table-bordered table-hover" id="joined">
                                    <thead>
                                        <tr class="active">
                                            <th class="text-center">
                                                <input type="checkbox" id="joinList" class="sthamgia" checked="checked">
                                            </th>
                                            <th>Cán bộ</th>
                                            <th>Vai trò</th>
                                        </tr>
                                    </thead>

                                    <tbody class="right-staff">
                                    @if(isset($data_join))
                                        @for ($i = 0,$count = count($data_join['member']); $i< $count; $i++)
                                            <tr>
                                                <td class='text-center'><input type='checkbox' value="{{ $data_join['member'][$i]->pk_smacanbo }}" name='check[]' checked="checked" /></td>
                                                <td>{{ $data_join['member'][$i]->shodem }}</td>
                                                <td>
                                                    <select class='form-control' name='selected[]'>
                                                    @for ($j = 0,$counts = count($data_join['role']); $j< $counts; $j++)
                                                       <option value="{{ $data_join['role'][$j]->pk_imavt }}" @if($data_join['member'][$i]->pk_imavt == $data_join['role'][$j]->pk_imavt ) selected @endif >{{ $data_join['role'][$j]->svaitro }}</option>
                                                    @endfor
                                                    </select> 
                                                </td>
                                            </tr>
                                        @endfor
                                    @endif
                                    </tbody>
                                </table>
                            </div>
                        </div> <!-- /.col-5 -->
                    </div> <!-- /.row -->
            </div><!--  /.form-group -->
        </div>
    </div><!-- /.row -->
</div><!--/.box-body-->

<div class="box-footer">
   <span class="pull-right">
        <strong class="text-red">*</strong> : Thông tin bắt buộc <br>
    </span>
    <button type="submit" type="submit" class="btn btn-primary">Lưu thông tin</button>
</div><!-- /.box-footer -->

@section('script')
    <script src="/plugins/nicedit/nicEdit.js" type="text/javascript"></script>
    <script type="text/javascript">bkLib.onDomLoaded(nicEditors.allTextAreas);</script>
    <script src="/plugins/daterangepicker/moment.min.js"></script>
    <script src="/plugins/daterangepicker/daterangepicker.js"></script>
    <script src="/app/js/topic/topic.js?v={{time()}}" type="text/javascript"></script>
    <script type="text/javascript">
        $(function() {
                    //Date range picker
            $('#reservation').daterangepicker({
                locale: {
                    format: 'DD/MM/YYYY'
                },
            });
        }); 
    </script>
@endsection