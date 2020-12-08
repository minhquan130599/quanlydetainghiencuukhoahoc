<div class="box-tools form-group">
    <form action="" method="GET" autocomplete="off">
        <div class="input-group input-group-sm" style="width: 250px;">
            <input type="text" name="keyword" class="form-control pull-right" value="{{ $data['keyword'] }}" placeholder="Tìm kiếm...">
            <div class="input-group-btn">
                <button type="submit" class="btn btn-default" title="Tìm kiếm">
                    <i class="fa fa-search"></i>
                </button>

                <a title="Làm mới" href="{{ route('admin.registration_protect.index') }}" class="btn btn-default">
                    <i class="fa fa-refresh"></i>
                </a>
            </div>
        </div>
    </form>
</div>