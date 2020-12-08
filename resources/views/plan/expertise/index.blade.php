@extends('master.main_admin')
@section('title', 'Tra cứu hội đồng thẩm định')
@section('content-header')
  <section class="content-header">
    <h1>
        Lập kế hoạch
        <small>Tra cứu hội đồng</small>
    </h1>
    <ol class="breadcrumb">
        <li>Lập kế hoạch</li>
        <li>Hội đồng thẩm định</li>
        <li class="active">Tra cứu hội đồng</li>
    </ol>
  </section>
@endsection

@section('content')
    <section class="content">
    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Tra cứu hội đồng thẩm định</h3>
            <div class="box-tools">
                <a href="{{ route('admin.expertise.create') }}" class="btn btn-primary btn-sm" title="Cập nhật hội đồng thẩm định" data-toggle="tooltip"><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> Thêm</a>
            </div><!--  /.box-tools -->
        </div><!-- /.box-header -->
	@include('common.expertise_survey', [
        'title'         => 'Tra cứu hội đồng thẩm định',
        'name'          => 'thẩm định',
        'redirectRoute' => 'admin.expertise.edit',
        'data'          => $data,
        'topicArray'    => $topicArray,
        'remove_search' => 'admin.expertise.index'
	])
@endsection


@section('script')
<script src="/app/js/plan/expertise.js?v={{time()}}" type="text/javascript"></script>
{{-- <script src="/app/js/ng_plan/ExpertiseController.js" type="text/javascript"></script> --}}
<script type="text/javascript" src="/app/js/council.js"></script>
@endsection
