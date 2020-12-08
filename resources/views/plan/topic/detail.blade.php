@extends('master.main_admin')
@section('title', 'Tra cứu thông tin đề tài đăng ký')
@section('content-header')
<section class="content-header">
    <h1>
        Lập kế hoạch
        <small>Đánh giá, phê duyệt đề tài</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#">Lập kế hoạch</a></li>
        <li class="active">Đánh giá, phê duyệt đề tài</li>
    </ol>
</section>
@endsection

@section('content')
<section class="content">
    <div class="row">
        <div class="col-sm-3">
            <!-- Default box -->
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Thành viên tham gia đề tài</h3>
                </div><!-- /.box-header -->

                <div class="box-body">

                </div><!-- /.box-body -->
            </div>
            <!-- /.box -->

            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Lịch sử cập nhật</h3>
                </div><!-- /.box-header -->

                <div class="box-body">

                </div><!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div><!-- /.col-sm-3 -->

        <div class="col-sm-9">
            <!-- Default box -->
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Thông tin đề tài phê duyệt</h3>
                </div><!-- /.box-header -->

                <div class="box-body">
                <div class="panel_container">

                      <div class="panel-group" id="accordion">
                          <div class="panel panel-default">
                            <div class="panel-heading">
                              <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                  Collapsible Group Item #1
                              </a>
                          </h4>
                      </div>
                      <div id="collapseOne" class="panel-collapse collapse in">
                          <div class="panel-body">
                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                          Collapsible Group Item #2
                      </a>
                  </h4>
              </div>
              <div id="collapseTwo" class="panel-collapse collapse">
                  <div class="panel-body">
                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                  Collapsible Group Item #3
              </a>
          </h4>
      </div>
      <div id="collapseThree" class="panel-collapse collapse">
        <div class="panel-body">
            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
        </div>
    </div>
</div>
</div>


</div> <!-- end container -->
</div><!-- /.box-body -->
</div>
<!-- /.box -->
</div><!-- /.col-sm-3 -->
</div><!-- /.row -->

<div class="row">
    <div class="col-sm-12">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">
                    Bình luận đánh giá <br>
                    <small>Đề tài được phép thực hiện khi số phiếu "Chấp nhận" nhiều hơn số phiếu "Phản đối"</small><!-- /.help-block -->
                </h3><!-- /.box-title -->
                <div class="box-tools">
                    <button type="button" class="btn btn-success btn-sm" title="Đồng ý cho thực hiện đề tài"><span class="glyphicon glyphicon-ok"></span> Chấp nhận (1)</button>
                    <button type="button" class="btn btn-danger btn-sm" title="Không đồng ý cho thực hiện đề tài"><span class="glyphicon glyphicon-remove"></span> Phản đối (2)</button>
                </div><!--  /.box-tools -->
            </div><!-- /.box-header -->

            <div class="box-body">
                <ul class="media-list scrollable-menu scrollbar" id="ex4">
                    {!! display_comment_list($data) !!}
                </ul>
            </div><!-- /.box-body -->

            <div class="box-footer">
                <form action="" method="POST" role="form">
                    <div class="form-group">
                        <label for="">Nội dung bình luận</label>
                        <textarea name="" id="input" class="form-control" rows="3" required="required"></textarea>
                    </div>

                    <button type="submit" class="btn btn-primary">Đăng bình luận</button>
                </form>
            </div><!-- /.box-footer -->
        </div><!-- /.col-sm-12 -->
    </div><!-- /.box -->
</div><!-- /.row -->
</section><!-- /.content -->


@endsection

@section('style')
<style>
    .scrollbar{ height: auto;max-height: 360px;overflow-x: hidden;overflow-y:scroll; min-width: 135px;margin-top: 0px; }
    #ex4::-webkit-scrollbar { width:5px; }
    #ex4::-webkit-scrollbar-thumb { background-color:#B03C3F;border-radius:10px; }
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

@section('script')
<script src="/plugins/nicedit/nicEdit.js" type="text/javascript"></script>
<script type="text/javascript">bkLib.onDomLoaded(nicEditors.allTextAreas);</script>
@endsection
