<div class="search">
    <form action="" method="GET" class="form-horizontal" autocomplete="off">
        <div class="row">
            <div class="col-sm-4">
                <div class="form-group">
                    <label class="col-sm-4 control-label">Tiêu chí tìm:</label>
                    <div class="col-sm-8">
                        <select name="criteria" class="form-control select2">
                            <option value="">Tất cả</option>
                            <option value="tenhoidong" {{ $search_data['criteria'] == 'tenhoidong' ? 'selected' : null }}>Tên hội đồng</option>
                            <option value="maso" {{ $search_data['criteria'] == 'maso' ? 'selected' : null }}>Mã số hội đồng</option>
                            <option value="quyetdinh" {{ $search_data['criteria'] == 'quyetdinh' ? 'selected' : null }}>Quyết định thành lập</option>
                            <option value="ngaythanhlap" {{ $search_data['criteria'] == 'ngaythanhlap' ? 'selected' : null }}>Ngày thành lập</option>
                            <option value="ngaylamviec" {{ $search_data['criteria'] == 'ngaylamviec' ? 'selected' : null }}>Ngày làm việc</option>
                        </select>
                    </div><!--  /.col-sm-8 -->
                </div>
            </div><!--  /.col-sm-4 -->

            <div class="col-sm-4">
                <div class="form-group">
                    <label class="col-sm-4 control-label">Từ khóa</label>
                    <div class="col-sm-8">
                        <input type="text" name="keyword" class="form-control"  placeholder="Tìm kiếm theo tiêu chí" value="{{ $search_data['keyword'] }}">
                    </div><!--  /.col-sm-8 -->
                </div>
            </div>

            <div class="col-sm-4">
                <div class="form-group">
                    <button type="submit" class="btn btn-primary" title="Tra cứu hội đồng theo tiêu chí">Tìm kiếm</button>
                    <a href="{{ route($remove_search) }}" class="btn btn-default" title="Hủy bỏ tìm kiếm">Hủy tìm kiếm</a>
                </div><!--  /.form-group -->
            </div><!-- /.col-sm-8 -->
        </div><!--  /.row -->
    </form>
</div><!--  /.row --> <hr class="row" />