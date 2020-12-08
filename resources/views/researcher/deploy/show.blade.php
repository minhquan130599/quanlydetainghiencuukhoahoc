@extends('master.main_admin')
@section('title', 'Chi tiết đề tài')
@section('content-header')
<section class="content-header">
    <h1>
        Triển khai danh mục
        <small>Chi tiết đề tài</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#">Triển khai</a></li>
        <li class="active">Triển khai danh mục</li>
    </ol>
</section>
@endsection

@section('content')
<section class="content">
<div class="nav-tabs-custom">
    <ul class="nav nav-tabs" id="myTab">
        <li class="active"><a href="#tab_1" data-toggle="tab">Thông tin đề tài</a></li>
        <li><a href="#tab_2" data-toggle="tab">Thẩm định đề tài</a></li>
        <li><a href="#tab_3" data-toggle="tab">Hợp đồng đề tài</a></li>
        <li><a href="#tab_4" data-toggle="tab">Triển khai</a></li>
        <li><a href="#tab_5" data-toggle="tab">Phân bổ kinh phí</a></li>
        <li><a href="#tab_6" data-toggle="tab">Nghiệm thu đề tài</a></li>
        <li><a href="#tab_7" data-toggle="tab">Thanh lý đề tài</a></li>
        <li><a href="#tab_8" data-toggle="tab">Chứng nhận</a></li>
    </ul>

    <div class="tab-content" ng-controller="DeployController">
        <div class="tab-pane active" id="tab_1">
            <div ng-include src="'/template/deploy/category/topic_information.html'"></div>
        </div><!-- /.pane 1 -->

        <div class="tab-pane" id="tab_2">
            <div ng-include src="'/template/deploy/category/expertise.html'"></div>
        </div><!-- /.tab-panel 2 -->

        <div class="tab-pane" id="tab_3">
            <div ng-include src="'/template/deploy/category/contract.html'"></div>
        </div><!-- /.pane 3 -->

        <div class="tab-pane" id="tab_4">
            <div ng-include src="'/template/deploy/category/survey.html'"></div>
        </div><!-- /.pane 4 -->

        <div class="tab-pane" id="tab_5">
            <div ng-include src="'/template/deploy/category/expense.html'"></div>
        </div><!-- /.pane 5 -->

        <div class="tab-pane" id="tab_6">
            <div ng-include src="'/template/deploy/category/acceptance.html'"></div>
        </div><!-- /.pane 6 -->

        <div class="tab-pane" id="tab_7">
            <div ng-include src="'/template/deploy/category/liquidation.html'"></div>
        </div><!-- /.pane 7 -->

        <div class="tab-pane" id="tab_8">
            <div ng-include src="'/template/deploy/category/certify.html'"></div>
        </div><!-- /.pane 7 -->
    </div><!-- /.tab-content -->
</div><!-- /.tab-custom -->
</section><!--/.content-->
@endsection


@section('script')
    <!-- AngularJS -->
    <script src="/app/js/angular.min.js"></script>
    <script src="/app/js/angular-sanitize.js"></script>
    <script src="/app/js/angular-route.min.js"></script>
    <script src="/app/js/app_angular.js"></script>
    <script type="text/javascript" src="/app/js/researcher/DeployController.js"></script>
@endsection