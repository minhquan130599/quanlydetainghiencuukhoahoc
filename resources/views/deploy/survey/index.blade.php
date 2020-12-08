@extends('master.main_admin')
@section('title', 'Tra cứu hội đồng khảo sát')
@section('content-header')
  <section class="content-header">
    <h1>
        Hội đồng khảo sát
        <small>Tra cứu</small>
    </h1>
    <ol class="breadcrumb">
        <li>Triển khai</li>
        <li>Hội đồng khảo sát</li>
        <li class="active">Tra cứu hội đồng</li>
    </ol>
  </section>
@endsection

@section('content')
	<section class="content">
    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Tra cứu hội đồng khảo sát</h3>
             <div class="box-tools">
                <a href="{{ route('admin.survey.create') }}" class="btn btn-primary btn-sm" title="Cập nhật hội đồng khảo sát" data-toggle="tooltip"><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> Thêm</a>
            </div><!--  /.box-tools -->
        </div><!-- /.box-header -->

	@include('common.expertise_survey', [
        'title'         => 'Tra cứu hội đồng khảo sát',
        'name'          => 'khảo sát',
        'redirectRoute' => 'admin.survey.edit',
        'data'          => $data,
        'topicArray'    => $topicArray,
        'remove_search' => 'admin.survey.index'
	])
</section><!-- /.content -->
@endsection


@section('script')
<script src="/app/js/plan/expertise.js" type="text/javascript"></script>
<script type="text/javascript" src="/app/js/council.js"></script>
@endsection
