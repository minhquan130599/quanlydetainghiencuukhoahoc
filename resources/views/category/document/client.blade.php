@extends('master.main_admin')
@section('title', 'Văn bản, biểu mẫu NCKH')
@section('content-header')
<section class="content-header">
    <h1>
        Văn bản, biểu mẫu NCKH
    </h1>
</section>
@endsection

@section('content')
<section class="content">
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Danh sách văn bản, biểu mẫu NCKH</h3>
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
        $('.datatable').DataTable({
            "aLengthMenu": [[10, 15, 25,50, -1], [10, 15, 25,50, "Tất cả"]],
            "iDisplayLength": -1,
        });
    });
</script>
@endsection
