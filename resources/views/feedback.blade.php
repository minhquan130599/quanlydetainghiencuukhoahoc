@extends('master.main_admin')
@section('title', 'Xem góp ý người dùng')
@section('content-header')
<section class="content-header">
    <h1>Xem góp ý người dùng</h1>
</section>
@endsection


@section('content')
<section class="content">
  <!-- Default box -->
  <div class="box">
    <div class="box-header with-border">
        <h3 class="box-title">Xem ý kiến người dùng</h3>
    </div><!-- /.box-header -->

    <div class="box-body">
        <table class="table table-hover datatables">
            <thead>
                <tr>
                    <th>TT</th>
                    <th>Thời gian đăng</th>
                    <th>E-email</th>
                    <th>Số điện thoại</th>
                    <th>Nội dung</th>
                </tr>
            </thead>
            <tbody>
                @forelse ($feedback AS $k => $f)
                <tr>
                    <td>{{ $k+1 }}</td>
                    <td>{{ $f->updated_at }}</td>
                    <td>{{ $f->email }}</td>
                    <td>{{ $f->phone_number }}</td>
                    <td>{{ $f->content }}</td>
                </tr>
                @empty
                Không có dữ liệu
                @endforelse
            </tbody>
        </table>
    </div><!-- /.box-body -->
</div>
<!-- /.box -->
</section><!-- /.content -->
@endsection

@section('script')
<script src="/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/plugins/datatables/dataTables.bootstrap.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('.datatables').DataTable({
            "pagingType": "full_numbers"
        });
    });
</script>
@endsection
