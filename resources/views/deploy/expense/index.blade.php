@extends('master.main_admin')
@section('title', 'Phân bổ kinh phí')
@section('content-header')
<section class="content-header">
    <h1>
        Phân bổ kinh phí
    </h1>
    <ol class="breadcrumb">
        <li><a href="#">Triển khai</a></li>
        <li class="active">Phân bổ kinh phí</li>
    </ol>
</section>
@endsection

@section('content')
<section class="content">
    <div class="row">
        <div class="col-sm-8">
            <!-- Default box -->
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Nội dung phân bổ kinh phí</h3>
                </div><!-- /.box-header -->

                <div class="box-body">
                    <form action="{{ !empty($data['expense']) ? route('admin.expense.update', $data['expense']->pk_imapbkp) : route('admin.expense.store') }}" method="POST" class="form-horizontal" role="form">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                        <div class="form-group">
                            <label for="inputTxtDetai" class="col-sm-2 control-label">Đề tài: <span class="text-red">*</span></label>
                            <div class="col-sm-10">
                                <select name="TxtDetai" id="inputTxtDetai" class="form-control select2" required="required">
                                    <option value="">--Chọn đề tài--</option>
                                    @forelse ($data['topic'] AS $t)
                                    <option value="{{ $t->pk_imadt }}" {{ (!empty($data['expense']) && $data['expense']->pk_imadt == $t->pk_imadt) ? 'selected' : null }}>{{ $t->stendt }}</option>
                                    @empty
                                        Không có dữ liệu
                                    @endforelse
                                </select>
                            </div>
                        </div> <hr class="row" />

                        <div class="form-group">
                            <label for="inputTxtNgaycap" class="col-sm-2 control-label">Ngày cấp: <span class="text-red">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" name="TxtNgaycap" id="inputTxtNgaycap" class="form-control datepick" value="{{ !empty($data['expense']) ? $data['expense']->inam : null }}" required="required"  />
                            </div>
                        </div> <hr class="row" />

                        <div class="form-group">
                            <label for="inputTxtKinhphi" class="col-sm-2 control-label">Kinh phí(VNĐ): <span class="text-red">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" name="TxtKinhphi" id="inputTxtKinhphi" class="form-control" value="{{ !empty($data['expense']) ? $data['expense']->fkinhphi : null }}" >
                            </div>
                        </div> <hr class="row" />

                        <div class="form-group">
                            <label for="inputTxtKinhphi" class="col-sm-2 control-label">Số tiền(chữ): <span class="text-red">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" name="txtSotien" id="txtSotien" class="form-control" value="{{ !empty($data['expense']) ? $data['expense']->sotienchu : null }}" >
                            </div>
                        </div> <hr class="row" />

                        <div class="form-group">
                            <label for="textareaTxtGhichu" class="col-sm-2 control-label">Ghi chú:</label>
                            <div class="col-sm-10">
                                <textarea name="TxtGhichu" id="textareaTxtGhichu" class="form-control" rows="3">{{ !empty($data['expense']) ? $data['expense']->sghichu : null }}</textarea>
                            </div>
                        </div> <hr class="row" />

                        <div class="form-group">
                            <div class="col-sm-10 col-sm-offset-2">
                                <button type="submit" class="btn btn-primary">Lưu thông tin</button>
                            </div>
                        </div>
                    </form>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-sm-8 -->

        <div class="col-sm-4">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Các lần phân bổ kinh phí trước của đề tài này</h3><!-- /.box-title -->
                </div><!-- /.box-header -->
                <div class="box-body" id="result">
                    @if (!empty ($data['other']))
                        @forelse ($data['other'] AS $k => $other)
                        <a class="btn btn-primary btn-block" style="margin-bottom: 2px;" data-toggle="modal" href='#modal-id{{$k}}'>{{ $other['inam'] }}</a>
                        <div class="modal fade" id="modal-id{{$k}}">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        <h4 class="modal-title">Lần cấp kinh phí ngày: {{ $other['inam'] }}</h4>
                                    </div>
                                    <div class="modal-body">
                                        <table class="table table-bordered table-stripped">
                                            <tr>
                                                <th>Kinh phí</th>
                                                <td>{{ $other['fkinhphi'] }} ({{ $other['sotienchu'] }})</td>
                                            </tr>

                                             <tr>
                                                <th>Ghi chú</th>
                                                <td>{{ $other['sghichu'] }}</td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @empty
                            Không có dữ liệu
                        @endforelse
                    @else
                        Không có dữ liệu
                    @endif
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-sm-4 -->
    </div><!-- /.row -->



    <div class="row">
      <div class="col-sm-12">
          <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Danh sách đề tài phân bổ kinh phí</h3>
            </div><!-- /.box-header -->

            <div class="box-body">
                <div class="table-responsives">
                    <table class="table table-bordered table-hover datatable">
                        <thead>
                            <tr class="active">
                                <th>#</th>
                                <th>Đề tài khoa học</th>
                                <th>Ngày cấp</th>
                                <th>Người quyết định</th>
                                <th>Số kinh phí (VNĐ)</th>
                                <th>Ghi chú</th>
                                <th width="10%">Tác vụ</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($data['expense_list'] AS $k => $e)
                            <tr class="{{ !empty($data['expense']) && $data['expense']->pk_imapbkp == $e->pk_imapbkp ? 'info' : null }}">
                                <td>{{ $k+1 }}</td>
                                <td>
                                    {{ $e->stendt }} <br>
                                    <b>Mã số: <span class="text-green">{{ $e->smasodetai }}</span></b>

                                </td>
                                <td class="text-center">{{ $e->inam }}</td>
                                <td>{{ $e->shodem }}</td>
                                <td class="text-center">
                                    {{ $e->fkinhphi }}
                                    <p>({{ $e->sotienchu }})</p>
                                </td>
                                <td>{{ $e->sghichu }}</td>
                                <td>
                                    <div class="btn-group">
                                        <a href="{{ route('admin.expense.edit', $e->pk_imapbkp) }}" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-pencil"></span></a>
                                        <form action="{{ route('admin.expense.destroy', $e->pk_imapbkp) }}" method="POST" style="display: inline-block;">
                                            <button type="submit" class="btn btn-default btn-sm" onclick="return confirm('Xóa phân bổ kinh phí cho đề tài này?')"><span class="glyphicon glyphicon-trash"></span></button>
                                        </form>
                                    </div>
                                </td>
                            </tr>
                            @empty
                                Không có dữ liệu
                            @endforelse
                        </tbody>
                    </table>
                </div><!-- /.table-resposive -->
            </div><!-- /.box-body -->
        </div><!-- /.box -->
    </div><!-- /.col-sm-12 -->
</div><!-- /.row -->
</section><!-- /.content -->
@endsection

@section('script')
<script type="text/javascript" src="/plugins/jquery.number.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('.datatable').DataTable({
            "aLengthMenu": [[10, 15, 25,50, -1], [10, 15, 25,50, "Tất cả"]],
            "iDisplayLength": -1,
        });
        $('input[name="TxtKinhphi"]').number( true, 0, ',', '.' );
    });
</script>
<script type="text/javascript" src="/app/js/expense.js"></script>
@endsection
