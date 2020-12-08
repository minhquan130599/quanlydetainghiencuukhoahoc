@extends('master.main_admin')
@section('title', 'Chi tiết hồ sơ cán bộ')
@section('content-header')
  <section class="content-header">
    <h1>
        Hồ sơ cán bộ
        <small>Tra cứu</small>
    </h1>
    <ol class="breadcrumb">
        <li>Quản lý hồ sơ cán bộ</li>
        <li class="active">Tra cứu hồ sơ cán bộ</li>
    </ol>
  </section>
@endsection

@section('content')
<section class="content">
<div class="nav-tabs-custom">
    <ul class="nav nav-tabs">
        <li class="active"><a href="#tab_1" data-toggle="tab">Hồ sơ cá nhân</a></li>
        <li><a href="#tab_2" data-toggle="tab">Lý lịch khoa học</a></li>
        <li><a href="#tab_3" data-toggle="tab">Năng lực - thành tựu</a></li>
        <li><a href="#tab_4" data-toggle="tab">Đề tài đã tham gia</a></li>
        <li><a href="#tab_5" data-toggle="tab">Thành viên hội đồng</a></li>
    </ul>

    <div class="tab-content" ng-controller="StaffController">
        <div class="tab-pane active" id="tab_1">
            <div ng-include="'/template/staff/information.html'"></div>
        </div><!-- /.pane 1 -->

        <div class="tab-pane" id="tab_2">
            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title">
                            <a role="button" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Quá trình công tác
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                            <div ng-include src="'template/staff/business.html'"></div>
                        </div>
                    </div>
                </div><!-- /.Quá trình công tác -->

                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingTwo">
                        <h4 class="panel-title">
                            <a title="Click để mở rộng/thu nhỏ" class="collapsed accordion-toggle" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                Quá trình chuyên môn
                            </a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                        <div class="panel-body">
                            <div ng-include src="'template/staff/specialize.html'"></div>
                        </div>
                    </div>
                </div><!-- /. Quá trình chuyên môn -->

                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingThree">
                        <h4 class="panel-title">
                            <a title="Click để mở rộng/thu nhỏ" class="collapsed accordion-toggle" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                Quá trình bồi dưỡng
                            </a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                        <div class="panel-body">
                            <div ng-include src="'template/staff/foster.html'"></div>
                        </div>
                    </div>
                </div><!-- /.Quá trình bồi dưỡng -->

                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingFour">
                        <h4 class="panel-title">
                            <a title="Click để mở rộng/thu nhỏ" class="collapsed accordion-toggle" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                Công trình đề tài
                            </a>
                        </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                        <div class="panel-body">
                            <div ng-include src="'template/staff/work.html'"></div>
                        </div>
                    </div>
                </div><!-- /.Công trình đề tài -->

                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingFive">
                        <h4 class="panel-title">
                            <a title="Click để mở rộng/thu nhỏ" class="collapsed accordion-toggle" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                Ấn phẩm khoa học
                            </a>
                        </h4>
                    </div>
                    <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                        <div class="panel-body">
                            <div ng-include src="'template/staff/publication.html'"></div>
                        </div>
                    </div>
                </div><!-- /.Ấn phẩm khoa học -->
            </div><!-- .panel-group -->
        </div><!-- /.tab-panel 2 -->

        <div class="tab-pane" id="tab_3">
            <div ng-include="'template/staff/achievement.html'"></div>
        </div><!-- /.pane 3 -->

        <div class="tab-pane" id="tab_4">
            <div ng-include="'template/staff/topic_join.html'"></div>
        </div><!-- /.pane 4 -->

        <div class="tab-pane" id="tab_5">
            <div ng-include="'template/staff/council.html'"></div>
        </div><!-- /.pane 5 -->
    </div><!-- /.tab-content -->
</div><!-- /.tab-custom -->
</section><!--/.content-->
@endsection

@section('script')
<script src="/app/js/angular.min.js"></script>
<script src="/app/js/angular-sanitize.js"></script>
<script src="/app/js/angular-route.min.js"></script>
<script src="/app/js/app_angular.js"></script>
<script src="/app/js/ng_staff/StaffController.js" type="text/javascript"></script>
@endsection