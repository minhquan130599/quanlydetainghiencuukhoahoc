@extends('master.main_admin')
@section('title', 'Cập nhật hướng dẫn sử dụng')
@section('content-header')
<section class="content-header">
    <h1>
        Hướng dẫn sử dụng hệ thống
    </h1>
</section>
@endsection <!-- /.content-header -->

@section('content')
<section class="content">
    <div class="row">
        <div class="col-sm-12">
            <!-- Default box -->
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Cập nhật chứng nhận đề tài</h3>
                </div><!-- /.box-header -->

                <div class="box-body">
                    <form action="{{ !empty($manual) ? route('development.manual.update', $manual->id) : route('development.manual.store') }}" method="POST" role="form" class="form-horizontal">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}" />

                        <div class="form-group">
                            <label for="inputTxtNhomCanbo" class="col-sm-2 control-label">Nhóm cán bộ sử dụng:</label>
                            <div class="col-sm-10">
                                <select name="TxtNhomCanbo" id="inputTxtNhomCanbo" class="form-control" required="required">
                                    @if (count($staff_group))
                                    <option value="">--Chọn nhóm cán bộ--</option>
                                    @foreach ($staff_group AS $s)
                                    <option value="{{ $s->pk_imanhomcb }}" {!! (!empty($manual) && $manual->pk_imanhomcb == $s->pk_imanhomcb) ? 'selected' : null !!}>{{ $s->stennhomcb }}</option>
                                    @endforeach

                                    @else
                                    <option value="">--Không có dữ liệu--</option>
                                    @endif
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputTxtPhanHe" class="col-sm-2 control-label">Phân hệ:</label>
                            <div class="col-sm-10">
                                <input type="text" name="TxtPhanHe" id="inputTxtPhanHe" class="form-control" value="{{ !empty($manual) ? $manual->stenphanhe : null }}" required="required">
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="textareaTxtMota" class="col-sm-2 control-label">Mô tả:</label>
                            <div class="col-sm-10">
                                <textarea name="TxtMota" id="txtMota" class="form-control" rows="3" required="required">{!! !empty($manual) ? $manual->smota : null !!}</textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="textareaTxtNoidung" class="col-sm-2 control-label">Nội dung <br>hướng dẫn:</label>
                            <div class="col-sm-10">
                                <textarea name="TxtNoidung" id="content" class="form-control" rows="3" required="required">{!! !empty($manual) ? $manual->snoidung : null !!}</textarea>
                                <script type="text/javascript">CKEDITOR.replace('content');</script>
                            </div>
                        </div> <hr class="row" />

                        <button type="submit" class="btn btn-primary">Cập nhật</button>
                    </form>
                </div><!--  /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-sm-8 -->
    </div><!-- /.row -->

    <div class="row">
        <div class="col-sm-12">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Danh sách chương/Phân hệ</h3>
                </div><!-- /.box-header -->

                <div class="box-body">
                    <table class="table table-stripped table-bordered datatable">
                        <thead>
                            <tr>
                                <th class="text-center">TT</th>
                                <th class="text-center">Phân hệ chức năng</th>
                                <th class="text-center">Nhóm cán bộ sử dụng</th>
                                <th class="text-center">Thời gian cập nhật</th><!-- /.text-center -->
                                <th class="text-center">Tác vụ</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($list_chapter AS $k => $v)
                            <tr>
                                <td class="text-center">{!! $k+1 !!}</td>
                                <td>{!! $v->stenphanhe !!}</td>
                                <td class="text-center">{!! $v->stennhomcb !!}</td>
                                <td class="text-center">{!! $v->updated_at !!}</td>
                                <td class="text-center">
                                    <div class="btn-group">
                                        <a class="btn btn-default" href="{{ route('development.manual.show', $v->id) }}">Xem</a>
                                        <a href="{{ route('development.manual.edit', $v->id) }}" class="btn btn-default">Sửa</a>
                                    </div>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div><!--  /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-sm-12 -->
    </div><!-- /.row -->
</section><!-- /.content -->
@endsection

@section('script')
<script type="text/javascript">

    $(document).ready(function() {
        $('.datatable').DataTable();
    });
</script>
@endsection
