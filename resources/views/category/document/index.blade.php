@extends('master.main_admin')
@section('title', 'Danh sách đơn vị')
@section('content-header')
<section class="content-header">
    <h1>
        Danh sách đơn vị
        <small>Tra cứu</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="javascript:void(0)">Danh mục</a></li>
        <li class="active">Văn bản, biểu mẫu</li>
    </ol>
</section>
@endsection

@section('content')
<section class="content">
    <!-- Form cập nhật -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Cập nhật văn bản, biểu mẫu</h3>
        </div><!-- /.box-header -->

        <div class="box-body">
            <div class="row">
                <form action="{{ isset($document) ?  route('admin.document.update', $document->pk_imavb) : route('admin.document.store') }}" method="post" class="form-horizontal" autocomplete="off" enctype="multipart/form-data">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label class="control-label col-sm-4 label-lvb">Loại văn bản<span class="text-red required">*</span></label>
                            <div class="col-sm-8">
                                <select name="loaivanban" id="loaivanban" class="form-control" required="">
                                    <option value="">--Chọn loại văn bản--</option>
                                    @forelse ($data['document_category'] AS $d)
                                    <option value="{{ $d->pk_imaloaivb }}" {{ (isset($document) && $document->pk_imaloaivb == $d->pk_imaloaivb) ? 'selected' : null }}>{{ $d->stenloaivb }}</option>
                                    @empty
                                    Không có dữ liệu
                                    @endforelse
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-4 sohieu">Văn bản<span class="text-red required">*</span></label>
                            <div class="col-sm-8">
                                <input type="text" name="ten_link" class="form-control" value="{{ isset($document) ? $document->stenlink : '' }}" required="required">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-4 sohieu">Số hiệu<span class="text-red required">*</span></label>
                            <div class="col-sm-8">
                                <input type="text" name="sohieu" class="form-control" value="{{ isset($document) ? $document->ssohieuvb : '' }}" required="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4 nguoiky">Người ký<span class="text-red required">*</span></label>
                            <div class="col-sm-8">
                                <input type="text" name="nguoiky" class="form-control" value="{{ isset($document) ? $document->snguoiky : Auth::user()->shodem }}" required="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4">Ngày hiệu lực</label>
                            <div class="col-sm-8">
                                <input type="text" name="ngayhieuluc" class="form-control datepick" value="{{ isset($document) ? $document->sngayhieuluc : '' }}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4">Cơ quan ban hành</label>
                            <div class="col-sm-8">
                                <input type="text" name="coquanbanhanh" class="form-control" value="{{ isset($document) ? $document->scqbanhanh : 'HỌC VIỆN KỸ THUẬT MẬT MÃ' }}">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="control-label col-sm-4">Tóm tắt</label>
                            <div class="col-sm-8">
                                <textarea name="tomtat" class="form-control" id="" rows="3">{{ isset($document) ? $document->stomtat : '' }}</textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-4">File đính kèm</label>
                            <div class="col-sm-8">
                                <input type="file" name="file">
                            </div>

                            @if (isset ($document))
                            <small class="text-bold text-success">
                                Văn bản này đã có file đính kèm. Cán bộ có thể xem tại đây.
                                Nếu muốn thay đổi vui lòng bấm vào nút "Chọn tệp" hoặc "Chọn tập tin"
                            </small>
                            @endif
                        </div>

                        <hr class="row">
                        <div class="form-group pull-right no-padding no-margin">
                            <input type="submit" name="themvanban" value="{{ isset($document) ? 'Cập nhật' : 'Thêm văn bản' }}" class="btn btn-primary btn-flat">
                        </div><!-- /.form-group -->
                    </div>
                </form>
            </div>
        </div><!-- /.box-body -->
    </div>



    <!-- Danh sách -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Danh sách văn bản, biểu mẫu</h3>
        </div><!-- /.box-header -->

        <div class="box-body">
            <div class="table-responsives">
                <table class="table table-bordered table-hover datatable">
                    <thead>
                        <tr>
                            <th class="text-center">#</th>
                            <th class="text-center">
                                Văn bản <br>
                                <small>(Bấm vào tên văn bản để tải)</small>
                            </th>
                            <th class="text-center">Số hiệu</th>
                            <th class="text-center">Người ký</th>
                            <th class="text-center">Ngày hiệu lực</th>
                            <th class="text-center">Cơ quan ban hành</th>
                            <th class="text-center">Tóm tắt</th>
                            <th class="text-center">Tác vụ</th>
                        </tr>
                    </thead>
                    <tbody id="neo">
                        @forelse ($data['document_list'] AS $k => $d)
                        <tr>
                            <td>{{ $k+ 1 }}</td>
                            <td>
                                <a href="{{ $d->slink }}">{{ $d->stenlink }}</a>
                            </td>
                            <td>{{ $d->ssohieuvb }}</td>
                            <td>{{ $d->snguoiky }}</td>
                            <td>{{ $d->sngayhieuluc }}</td>
                            <td>{{ $d->scqbanhanh }}</td>
                            <td>{{ $d->stomtat }}</td>
                            <td class="text-center">
                                <div class="btn-group">
                                  <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Tác vụ <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a href="{{ route('admin.document.edit', $d->pk_imavb) }}">Sửa văn bản</a></li>
                                    <li>
                                        <form action="{{ route('admin.document.delete', $d->pk_imavb) }}" method="POST">
                                        <button type="submit" class="btn btn-link p20" onclick="return confirm('Xóa văn bản, biểu mẫu này?')">Xóa văn bản</button>
                                        </form>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </td>
                </tr>
                @empty
                @endforelse
            </tbody>
        </table>
    </div><!-- /.table-resposive -->
</div><!-- /.box-body -->
</div>
<!-- /.box -->
</section><!-- /.content -->
@endsection

@section('script')
<script src="/plugins/datatables/jquery.dataTables.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('.datatable').DataTable();
    });
</script>
@endsection
