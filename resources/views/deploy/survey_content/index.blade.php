@extends('master.main_admin')
@section('title', 'Kết quả khảo sát đề tài khoa học')
@section('content-header')
  <section class="content-header">
    <h1>
        Triển khai
        <small>Kết quả khảo sát</small>
    </h1>
    <ol class="breadcrumb">
        <li>Triển khai</li>
        <li>Hội đồng khảo sát</li>
        <li class="active">Kết quả khảo sát</li>
    </ol>
  </section>
@endsection

@section('content')
<section class="content">
  <!-- Default box -->
  <div class="box" ng-controller="ExpertiseContentController">
    <div class="box-header with-border">
      	<h3 class="box-title">Kết quả khảo sát</h3>
	       <div class="box-tools">
                <a href="{{ route('admin.survey_content.create') }}" class="btn btn-primary btn-sm" title="Cập nhật nội dung khảo sát"><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> Thêm</a>
            </div><!--  /.box-tools -->
    </div><!-- /.box-header --> <br />

    @include('common._searchContent', ['data' => $data, 'name' => 'khảo sát'])

    @include('common.expertise_survey_result', [
        'data' => $data,
        'name' => 'khảo sát',
        'redirectRoute' => 'admin.survey_content.edit',
        'topic_status' => 3
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