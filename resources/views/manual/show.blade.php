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
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">
                Hướng dẫn sử dụng hệ thống - Nhóm cán bộ: <span class="text-green"></span>
            </h3>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <div class="panel-group" id="accordion">
                @foreach ($documentation AS $k => $d)
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#{{ $k }}">
                            {{ $d->stenphanhe }}
                            </a>
                        </h4>
                    </div>

                    <?php
                        if (!empty ($id) && $id == $d->id)
                        {
                            $active = 'in';
                        }
                        elseif ($k == 0 && empty ($id))
                        {
                            $active = 'in';
                        }
                        else {
                            $active = null;
                        }
                    ?>
                    <div id="{{ $k }}" class="panel-collapse collapse {!! $active !!}">
                        <div class="panel-body">
                            <p><em class="text-bold">---Mô tả---</em></p>
                            {!! $d->smota !!} <br />

                            <p><em class="text-bold">---Nội dung---</em></p>
                            {!! $d->snoidung !!}
                        </div>
                    </div>
                </div><!-- /.panel -->
                @endforeach
            </div><!-- /.panel-group -->
        </div>
        <!--  /.box-body -->
    </div>
    <!-- /.box -->
</section>
<!-- /.content -->
@endsection
@section('style')
<style type="text/css">
    .panel-heading .accordion-toggle:after {
    /* symbol for "opening" panels */
    font-family: 'Glyphicons Halflings';  /* essential for enabling glyphicon */
    content: "\e114";    /* adjust as needed, taken from bootstrap.css */
    float: right;        /* adjust as needed */
    color: grey;         /* adjust as needed */
    }
    .panel-heading .accordion-toggle.collapsed:after {
    /* symbol for "collapsed" panels */
    content: "\e080";    /* adjust as needed, taken from bootstrap.css */
    }
</style>
@endsection