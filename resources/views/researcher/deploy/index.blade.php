@extends('master.main_admin')
@section('title', 'Triển khai danh mục')
@section('content-header')
<section class="content-header">
    <h1>
        Theo dõi đề tài đang triển khai
    </h1>
</section>
@endsection
@section('content')
<section class="content">
    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Theo dõi đề tài đang triển khai</h3>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <ol>
            @foreach ($data['paginatorContent'] AS $key => $val)
            <li>
                <a href="{{ route('researcher.deploy.show', $val->pk_imadt) }}" target="_blank">
                {{ $val->stendt }} (MS: <b>{!! $val->smasodetai !!}</b>)
                </a>
            </li>
            @endforeach
        </div>
        <!-- /.box-body -->
    </div>
</section>
<!-- /.content -->
@endsection

@section('script')
<script type="text/javascript">
    $(document).ready(function() {
       $('form').find('.input-group-btn').find('a:last').remove()
    });
</script>
@endsection