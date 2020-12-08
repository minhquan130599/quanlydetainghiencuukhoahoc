@extends('master.main_admin')
@section('title', 'Đăng ký đề tài NCKH')
@section('content-header')
    <section class="content-header">
        <h1>
	        Đăng ký bảo vệ đề tài
        </h1>
	    <ol class="breadcrumb">
	        <li class="active">Đăng ký bảo vệ đề tài</li>
	    </ol>
    </section>
@endsection <!-- /.content-header -->

@section('content')
    <section class="content">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">Đăng ký bảo vệ đề tài</h3>
            </div><!--/.box-header-->
            <div class="box-body">
                <form action="{{ route('researcher.registration.store') }}" method="POST" autocomplete="off">
                    <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                    <div class="table-responsives">
                        <table class="table table-hover table-bordered datatatable">
                            <thead>
                                <tr class="active">
                                    <th class="text-center">#</th>
                                    <th class="text-center">Đề tài khoa học</th>
                                    <th class="text-center">Mã số đề tài</th>
                                    <th class="text-center">Hội đồng khảo sát</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($registration AS $key => $val)
                                <tr>
                                    <td class="text-center">
                                        <input type="checkbox" name="check[]" class="iCheck choose" value="{{ $val->pk_imadt }}" />
                                    </td>
                                    <td>{{ $val->stendt }}</td>
                                    <td>{{ $val->smasodetai}}</td>
                                    <td>{{ $val->stenhd }}</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    <!--  /.box-footer -->
                    <button type="submit" name="submit" class="btn btn-primary">Đăng ký bảo vệ</button>
                <!--  /.table-responsive -->
                </form>
            </div>
        </div><!--/.box-->
    </section><!--/.content-->
@endsection <!-- /.content -->
@section('style')
     <link rel="stylesheet" href="/plugins/datatables/dataTables.bootstrap.css">
     <link rel="stylesheet" href="/plugins/iCheck/all.css">
@endsection

@section('script')
<script src="/plugins/iCheck/icheck.min.js"></script>
<!-- Datatable -->
<script src="/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/plugins/datatables/dataTables.bootstrap.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        var count = 0;
        $('button[name="submit"]').click(function () {
            $('.choose:checked').each(function () {
                count++;
            });

            if (count == 0) {
                showMessage('Bạn chưa chọn đề tài đăng ký bảo vệ', 'error');
                return false;
            }
        });

        $('.datatatable').DataTable();
    });
</script>
@endsection
