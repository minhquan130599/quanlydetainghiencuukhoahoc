@extends('master.main_admin')
@section('title', 'Hệ thống')
@section('content-header')
    <section class="content-header">
        <h1>
            Thông báo
        </h1>
	    <ol class="breadcrumb">
	        <li class="active">Quản lý thông báo</li>
	    </ol>
    </section>
@endsection <!-- /.content-header -->
@section('style')
@endsection
@section('content')
<style type="text/css" media="screen">
   
</style>
    <section class="content">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">Thông báo</h3>
                <div class="box-tools">
                    <form action="" method="GET" autocomplete="off">
                    </form>
                </div>
            </div><!--/.box-header-->
                <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                <div class="box-body">
                    <div class="col-md-12">
                      <!-- The time line -->
                      <ul class="timeline">
                        <!-- timeline time label -->
                        <?php
                            $colors = array("red","green","blue","yellow","aqua","gray","purple");
                        ?>
                       {{ \Carbon\Carbon::setLocale('vi') }}
                        @forelse ($arrayNotify AS $date => $val)
                            <li class="time-label">
                              <span class="bg-{{ $colors[array_rand($colors)] }}">
                                {{ $date }}
                              </span>
                            </li>
                            @foreach ($val AS $k => $v)
                            <li>
                              <i class="fa fa-envelope bg-blue"></i>
                              <div class="timeline-item" style="background-color: rgba(189, 186, 189, 0.15)">
                                <span class="time"><i class="fa fa-clock-o"></i>&nbsp{!! \Carbon\Carbon::createFromTimeStamp(strtotime($v->created_at))->diffForHumans() !!}</span>
                                <br><b class="timeline-header">{{ $v->stieude }}</b>
                                <div class="timeline-body more">
                                  {{ $v->snoidung }}
                                </div>
                                <div class="timeline-footer">
<!--                                   <a class="btn btn-primary btn-xs">Đọc tiếp</a> -->
                                </div>
                              </div>
                            </li>
                            @endforeach

                        @empty
                            Không có thông báo nào.
                        @endforelse
                      </ul>
                    </div><!-- /.col -->
                </div>
                <div class="box-footer">
                </div><!-- /.box-footer -->
        </div><!--/.box-->
    </section><!--/.content-->
@endsection <!-- /.content -->
@section('script')

@endsection

