<div class="box-body">
    <input type="hidden" name="_token" value="{{ csrf_token() }}" />
    <div class="row">
        <div class="col-sm-6">
            <div class="form-group">
                <label>Tên đề tài NCKH <span class="text-red">*</span></label>
                <input type="text" class="form-control" name="txtTenDetai" value="{!! old('txtTenDetai', isset($topic->stendt) ? $topic->stendt : null) !!}">
            </div><!--  /.form-group -->
            @if (Route::currentRouteName() == 'admin.topic.create' OR Route::currentRouteName() == 'admin.topic.edit')
            <div class="form-group">
                <label>Người cập nhật <span class="text-red">*</span></label>
                <input type="text" class="form-control" name="txtCanbo" placeholder="Người cập nhật" value="{!! old('txtCanbo', isset($topic_join->snguoidangkyho) ? $topic_join->snguoidangkyho : Session::get('username')) !!}">
            </div><!--  /.form-group -->
            @endif
            <div class="form-group">
                <label>Kinh phí dự kiến</label>
                <input type="text" name="txtKinhphi" class="form-control" placeholder="Vui lòng nhập giá trị số"  value="{!! old('txtKinhphi', isset($topic->fcptong) ? $topic->fcptong : null) !!}" />
            </div><!--  /.form-group -->

            <div class="form-group">
                <label>Lĩnh vực nghiên cứu  <span class="text-red">*</span></label>
                <select name="txtLinhvuc" class="form-control">
                    {!! keepSelect($data['topic_field'], 'stenlv', 'pk_imalv', '--Chọn lĩnh vực--',old('txtLinhvuc', isset($topic->pk_imalv) ? $topic->pk_imalv : null)) !!}
                </select>
            </div><!--  /.form-group -->

            <div class="form-group">
                <label>Tính cấp thiết  <span class="text-red">*</span></label>
                <textarea name="txtCapthiet" class="form-control" rows="3">{!! old('txtCapthiet', isset($topic->scapthiet) ? $topic->scapthiet : null) !!}</textarea>
            </div><!--  /.form-group -->

            <div class="form-group">
                <label>Nội dung đề tài <span class="text-red">*</span></label>
                <textarea name="txtNoidung" class="form-control" rows="3">{!! old('txtNoidung', isset($topic->snoidungdaicuong) ? $topic->snoidungdaicuong : null) !!}</textarea>
            </div><!--  /.form-group -->

            <div class="form-group">
                <label>Kết cấu đề tài  <span class="text-red">*</span></label>
                <textarea name="txtKetcau" class="form-control" rows="3">{!! old('txtKetcau', isset($topic->sketcaudetai) ? $topic->sketcaudetai : null) !!}</textarea>
            </div><!--  /.form-group -->
        </div><!--  /.col-sm-6 -->

        <div class="col-sm-6">
            <div class="form-group">
                <label>Thời gian thực hiện đề tài <span class="text-red">*</span></label>
                <small>(Thời gian bắt đầu - Thời gian kết thúc)</small>
                <input type="text" class="form-control" name="txtThoigianThuchien" id="reservation" value="{!! old('txtThoigianThuchien', isset($topic) ? sprintf('%s - %s', date('d/m/Y', $topic->dngaybd), date('d/m/Y', $topic->dngaykt)) : null) !!}">
            </div><!-- /.form group -->

            @if (Route::currentRouteName() == 'admin.topic.create' OR Route::currentRouteName() == 'admin.topic.edit')
            <div class="form-group">
                <label>Chủ nhiệm đề tài <span class="text-red">*</span></label>
                <select name="txtChunhiem" class="form-control select2">
                    {{ keepSelect($data['staff_list'], 'shodem', 'pk_smacanbo', '--Chọn chủ nhiệm--', old('txtChunhiem', isset($topic_join) ? $topic_join->pk_smacanbo : null)) }}
                </select>
            </div><!--  /.form-group -->
            @endif

            <div class="form-group">
                <label>Loại đề tài  <span class="text-red">*</span></label>
                <select name="txtLoaiDetai" class="form-control">
                    {!! keepSelect($data['topic_category'], 'stenldt', 'pk_smaldt', '--Chọn loại đề tài--', old('txtLoaiDetai', isset($topic->pk_smaldt) ? $topic->pk_smaldt : null)) !!}
                </select>
            </div><!--  /.form-group -->

            <div class="form-group">
               <div class="row">
                    <div class="col-sm-6">
                        <label>Loại hình <span class="text-red">*</span></label>
                        <select name="txtLoaihinh" class="form-control">
                            {!! keepSelect($data['topic_type'], 'stenlh', 'pk_smalh', '--Chọn loại hình--', old('txtLoaihinh', isset($topic->pk_smalh) ? $topic->pk_smalh : null)) !!}
                        </select>
                    </div><!--  /.col-sm-6 -->

                    <div class="col-sm-6">
                        <label>Năm đề tài <span class="text-red">*</span></label>
                        <select name="txtNamDetai" class="form-control">
                            {!! keepSelect($data['topic_year'], 'sonam', 'pk_smaloainam', '--Chọn năm đề tài--', old('txtNamDetai', isset($topic->fk_smaloainam) ? $topic->fk_smaloainam : null)) !!}
                        </select>
                    </div><!--  /.col-sm-6 -->
                </div><!--  /.row -->
            </div><!--  /.form-group -->


            <div class="form-group">
                <label>Mục tiêu nghiên cứu <span class="text-red">*</span></label>
                <textarea name="txtMuctieu" class="form-control" rows="3">{!! old('txtMuctieu', isset($topic->smuctieu) ? $topic->smuctieu : null) !!}</textarea>
            </div><!--  /.form-group -->

            <div class="form-group">
                <label>Phương pháp nghiên cứu  <span class="text-red">*</span></label>
                <textarea name="txtPhuongphap" class="form-control" rows="3">{!! old('txtPhuongphap', isset($topic->sphuongphap) ? $topic->sphuongphap : null) !!}</textarea>
            </div><!--  /.form-group -->

            <div class="form-group">
                <label>Sản phẩm &amp; địa chỉ ứng dụng <span class="text-red">*</span></label>
                <textarea name="txtSanpham" class="form-control" rows="3">{!! old('txtSanpham', isset($topic->ssanpham) ? $topic->ssanpham : null) !!}</textarea>
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
                                    <select name="txtUnit" id="chondonvi" class="form-control">
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
                                            <th width="40%">Vai trò</th>
                                            <th>Công việc</th>
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
                                            <th width="40%">Vai trò</th>
                                            <th>Công việc</th>
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
                                                <td>
                                                    <input type="text" name="congviec" class="form-control" value="">
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
    <button type="submit" type="submit" class="btn btn-primary" title="Lưu thông tin đề tài đăng ký/đề xuất.">Lưu thông tin</button>
</div><!-- /.box-footer -->

@section('style')
    <!-- daterange picker -->
    <link rel="stylesheet" href="/plugins/daterangepicker/daterangepicker.css">
@endsection

@section('script')
    <script src="/plugins/daterangepicker/moment.min.js"></script>
    <script src="/plugins/daterangepicker/daterangepicker.js"></script>
    <!-- /.Select2 -->


    <script type="text/javascript">
        $(function() {
            // Định dạng lại ngày tháng
            $('#reservation').daterangepicker({
                locale: {
                    format: 'DD/MM/YYYY'
                },
            });
        });
    </script>

    <script type="text/javascript">
        // $(function(){
        //     $("textarea").each(function(){
        //         CKEDITOR.replace(this, {
        //             toolbar: [
        //                 ['Bold','Italic','Underline','StrikeThrough','-','-','Cut','Copy','Paste','Find','Replace',
        //                  '-','Outdent','Indent','-','NumberedList','BulletedList','-','JustifyBlock','-','Image','-','Link'
        //                 ],
        //             ]
        //         });
        //     });
        // }); // each
        //
    </script>

    <script src="/plugins/nicedit/nicEdit.js" type="text/javascript"></script>
    <script type="text/javascript">bkLib.onDomLoaded(nicEditors.allTextAreas);</script>
    <script src="/app/js/topic/topic.js?v={{time()}}" type="text/javascript"></script>
@endsection