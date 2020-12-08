@extends('master.main_admin')
@section('title', 'Kết quả thẩm định')
@section('content-header')
  <section class="content-header">
    <h1>
        Lập kế hoạch
        <small>Kết quả thẩm định</small>
    </h1>
    <ol class="breadcrumb">
        <li>Lập kế hoạch</li>
        <li>Hội đồng thẩm định</li>
        <li class="active">Kết quả thẩm định</li>
    </ol>
  </section>
@endsection

@section('content')
<section class="content">
  <!-- Default box -->
  <div class="box" ng-controller="ExpertiseContentController">
    <div class="box-header with-border">
      	<h3 class="box-title">Kết quả thẩm định</h3>
	     <div class="box-tools">
                <a href="{{ route('admin.expertise_content.create') }}" class="btn btn-primary btn-sm" title="Cập nhật nội dung thẩm định"><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> Thêm</a>
            </div><!--  /.box-tools -->
    </div><!-- /.box-header --> <br />

    @include('common._searchContent', ['data' => $data, 'name' => 'thẩm định'])

    @include('common.expertise_survey_result', [
        'data' => $data,
        'name' => 'thẩm định',
        'redirectRoute' => 'admin.expertise_content.edit',
        'topic_status' => 2
    ])

    @include('plan.expertise_content._email')
    @include('blocks.box_footerv2', ['data' => $data, 'search_data' => $data['search_data']])
  </div>
  <!-- /.box -->
</section><!-- /.content -->
@endsection



@section('script')
  <script src="/app/js/ng_plan/ExpertiseContentController.js"></script>
  <script type="text/javascript">
    $(document).ready(function(){
        $('[data-toggle="popover"]').popover();
    });
  </script>
@endsection