@extends('master.main_admin')
@section('title', 'Lý lịch khoa học')
@section('content-header')
<section class="content-header">
    <h1>
        Lý lịch khoa học
    </h1>
    <ol class="breadcrumb">
        <li><a href="#">Thông tin cá nhân</a></li>
        <li class="active">Lý lịch khoa học</li>
    </ol>
</section>
@endsection

@section('content')
<section class="content">
    <div class="nav-tabs-custom">
        <ul class="nav nav-tabs" id="myTab">
            <li class="active"><a href="#tab_1" data-toggle="tab">Quá trình công tác</a></li>
            <li><a href="#tab_2" data-toggle="tab">Quá trình chuyên môn</a></li>
            <li><a href="#tab_3" data-toggle="tab">Quá trình bồ dưỡng</a></li>
            <li><a href="#tab_4" data-toggle="tab">Công trình đề tài</a></li>
            <li><a href="#tab_5" data-toggle="tab">Ấn phẩm khoa học</a></li>
        </ul>

        <div class="tab-content">
            <div class="tab-pane active" id="tab_1" ng-controller="ScienceController">
               <div ng-include="'/template/science/business.html'"></div>
           </div><!-- /.pane 1 -->

           <div class="tab-pane" id="tab_2" ng-controller="SpecializeController">
               <div ng-include="'/template/science/specialize.html'"></div>
           </div><!-- /.tab-panel 2 -->

           <div class="tab-pane" id="tab_3" ng-controller="FosterController">
            <div ng-include="'/template/science/foster.html'"></div>
        </div><!-- /.pane 3 -->

        <div class="tab-pane" id="tab_4" ng-controller="WorkController">
            <div ng-include="'/template/science/work.html'"></div>
        </div><!-- /.pane 4 -->

        <div class="tab-pane" id="tab_5" ng-controller="PublicationController">
            <div ng-include="'/template/science/publication.html'"></div>
        </div><!-- /.pane 5 -->
    </div><!-- /.tab-content -->
</div><!-- /.tab-custom -->
</section><!--/.content-->
@endsection

@section('style')
<style>
    fieldset.scheduler-border {
        border: 1px groove #ddd !important;
        padding: 0 1.4em 1.4em 1.4em !important;
        margin: 0 0 1.5em 0 !important;
        -webkit-box-shadow:  0px 0px 0px 0px #000;
        box-shadow:  0px 0px 0px 0px #000;
    }

    legend.scheduler-border {
        font-size: 1.2em !important;
        font-weight: bold !important;
        text-align: left !important;
        width:auto;
        padding:0 10px;
        border-bottom:none;
    }

</style>
  <link rel="stylesheet" media="all" href="/plugins/pnotify/pnotify.custom.min.css">
@endsection
@section('script')
<!-- AngularJS -->
<script src="/app/js/angular.min.js"></script>
<script src="/app/js/angular-sanitize.js"></script>
<script src="/app/js/angular-route.min.js"></script>
<script src="/app/js/app_angular.js"></script>
<!-- PNotify -->
<script src="/plugins/pnotify/pnotify.custom.min.js"></script>
<script type="text/javascript" src="/app/js/ng_science/ScienceController.js"></script>
<script type="text/javascript" src="/app/js/ng_science/SpecializeController.js"></script>
<script type="text/javascript" src="/app/js/ng_science/FosterController.js"></script>
<script type="text/javascript" src="/app/js/ng_science/WorkController.js"></script>
<script type="text/javascript" src="/app/js/ng_science/PublicationController.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        url = window.location.href;
        if (getParameterByName('tab')) {
            var data = getParameterByName('tab');
            var hash = '#tab_' + data;
            $('#myTab a[href="' + hash + '"]').tab('show');
        }
    });
</script>
@endsection
