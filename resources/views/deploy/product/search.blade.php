<div class="search">
    <form action="" method="GET" class="form-horizontal" autocomplete="off">
        <div class="row">
            <div class="col-sm-4">
                <div class="form-group">
                    <label class="col-sm-4 control-label">Đề tài</label>
                    <div class="col-sm-8">
                        <select name="topic" class="form-control select2">
                            <option value="">Tất cả</option>
                            @foreach ($data['topic_list'] AS $topic)
                            <option value="{{ $topic['pk_imadt'] }}" {{ ($data['search_data'] && $data['search_data']['topic'] == $topic['pk_imadt']) ? 'selected' : null }}>{{ $topic['stendt'] }}</option>
                            @endforeach
                        </select>
                    </div><!--  /.col-sm-8 -->
                </div>

                <div class="form-group">
                    <label class="col-sm-4 control-label">Chủ nhiệm</label>
                    <div class="col-sm-8">
                        <select name="leader" class="form-control select2">
                            <option value="">Tất cả</option>
                            @foreach ($data['staff_list'] AS $staff)
                            <option value="{{ $staff['pk_smacanbo'] }}" {{ ($data['search_data'] && $data['search_data']['leader'] == $staff['pk_smacanbo']) ? 'selected' : null }}>{{ $staff['shodem'] }}</option>
                            @endforeach
                        </select>
                    </div><!--  /.col-sm-8 -->
                </div>


            </div><!--  /.col-sm-4 -->

            <div class="col-sm-4">
                <div class="form-group">
                    <label class="col-sm-4 control-label">Sản phẩm</label>
                    <div class="col-sm-8">
                        <input type="text" name="product" class="form-control" value="{{ ($data['search_data']) ? trim($data['search_data']['product']) : '' }}">
                    </div><!--  /.col-sm-8 -->
                </div>

                <div class="form-group">
                    <label class="col-sm-4 control-label">Nơi công bố</label>
                    <div class="col-sm-8">
                        <input type="text" name="publication" class="form-control" value="{{ ($data['search_data']) ? trim($data['search_data']['publication']) : '' }}">
                    </div><!--  /.col-sm-8 -->
                </div>
            </div><!--  /.col-sm-4 -->

            <div class="col-sm-4">
                <div class="form-group">
                    <label class="col-sm-4 control-label">Năm công bố</label>
                    <div class="col-sm-8">
                        <select name="public_year" class="form-control select2">
                            <option value="">Chọn năm</option>
                            <?php $currentYear = date('Y', time()); ?>
                            @for ($i=2000; $i <= $currentYear; $i++)
                            <option value="{{ $i }}" {{ ($data['search_data'] && $data['search_data']['public_year'] == $i) ? 'selected' : null }}>{{ $i }}</option>
                            @endfor
                        </select>
                    </div><!--  /.col-sm-8 -->
                </div>

                <div class="form-group pull-right no-margin">
                    <button type="submit" class="btn btn-primary">Tìm kiếm</button>
                    <a href="{{ route('admin.product.index') }}" class="btn btn-default">Hủy tìm kiếm</a>
                </div><!--  /.form-group -->

            </div><!--  /.col-sm-4 -->
        </div><!--  /.row -->
    </form>
</div><!--  /.row --> <hr class="row" />