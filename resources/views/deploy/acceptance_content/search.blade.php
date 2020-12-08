<div class="search">
    <form action="" method="GET" class="form-horizontal" autocomplete="off">
        <div class="row">
            <div class="col-sm-12">
                <div class="col-sm-4">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">Hội đồng</label>
                        <div class="col-sm-8">
                            <select name="council" class="form-control select2">
                                <option value="">Tất cả</option>
                                @foreach ($data['council'] AS $c)
                                <option value="{{ $c['pk_imahd'] }}" {{ $data['search_data']['council'] == $c['pk_imahd'] ? 'selected' : null }}>{{ $c['stenhd'] }}</option>
                                @endforeach
                            </select>
                        </div>
                        <!--  /.col-sm-8 -->
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 control-label">Đề tài</label>
                        <div class="col-sm-8">
                            <select name="topic" class="form-control select2">
                                <option value="">Tất cả</option>
                                @foreach ($data['topic'] AS $topic)
                                <option value="{{ $topic['pk_imadt'] }}" {{ $data['search_data']['topic'] == $topic['pk_imadt'] ? 'selected' : null }}>{{ $topic['stendt'] }}</option>
                                @endforeach
                            </select>
                        </div>
                        <!--  /.col-sm-8 -->
                    </div>
                </div>
                <!--  /.col-sm-4 -->
                <div class="col-sm-4">
                    <div class="form-group">
                        <label class="col-sm-4 control-label" title="Ngày nghiệm thu">Ngày n.thu</label>
                        <div class="col-sm-8">
                            <input type="text" name="dngaybc" class="form-control datepick"  placeholder="Nhập ngày báo cáo" value="{{ $data['search_data']['dngaybc'] }}">
                        </div>
                        <!--  /.col-sm-8 -->
                    </div>
                    <div class="form-group no-margin">
                        <button type="submit" class="btn btn-primary" title="Tra cứu kết quả theo tiêu chí">Tìm kiếm</button>
                        <a href="{{ route('admin.acceptance_content.index') }}" class="btn btn-default" title="Hủy bỏ tìm kiếm">Hủy tìm kiếm</a>
                    </div>
                    <!-- /.form-group txt-right -->
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">Xếp loại</label>
                        <div class="col-sm-8">
                            <select name="xeploai" class="form-control select2">
                                <option value="">Tất cả</option>
                                @foreach ($data['rate'] AS $r)
                                <option value="{{ $r->pk_imadmxeploai }}" {{ $data['search_data']['xeploai'] == $r->pk_imadmxeploai ? 'selected' : null }}>{{ $r->stendmxeploai }}</option>
                                @endforeach
                            </select>
                        </div>
                        <!--  /.col-sm-8 -->
                    </div>
                </div>
                <!-- /.col-sm-4 -->
            </div>
            <!-- /.col-sm-12 -->
        </div>
        <!--  /.row -->
    </form>
</div>
<!--  /.row -->
<hr class="row" />