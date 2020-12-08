@extends('master.main_admin')
@section('title', 'Cập nhật đơn vị')
@section('content-header')
    <section class="content-header">
        <h1>
          Thông tin cá nhân
      </h1>
      <ol class="breadcrumb">
          <li><a href="#">Cập nhật thông tin năng lực, thành tựu</a></li>
          <li class="active">Cập nhật</li>
      </ol>
    </section>
@endsection

@section('content')
    <section class="content">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">Cập nhật thông tin năng lực, thành tựu</h3>
            </div><!--/.box-header-->

            <form action="{{ route('researcher.achievement.store')}}" method="POST" autocomplete="off">
                <div class="box-body">
                  <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                  <div class="row">
                      <div class="col-sm-6">
                          <div class="form-group">
                              <label>Danh hiệu</label>
                              <textarea name="txtDanhhieu" class="form-control" rows="3">{{isset($data) ? $data->sdanhhieu : null}}</textarea>
                          </div><!--  /.form-group -->

                          <div class="form-group">
                              <label>Khen thưởng</label>
                              <textarea name="txtKhenthuong" class="form-control" rows="3">{{isset($data) ? $data->skhenthuong : null}}</textarea>
                          </div><!--  /.form-group -->

                          <div class="form-group">
                              <label>Lý luận chính trị</label>
                              <textarea name="txtLyluan" class="form-control" rows="3">{{isset($data) ? $data->slyluanchinhtri : null}}</textarea>
                          </div><!--  /.form-group -->
                      </div><!--  /.col-sm-6 -->

                      <div class="col-sm-6">
                          <div class="form-group">
                              <label>Chức vụ</label>
                              <input type="text" class="form-control" name="txtChucvu" id="reservation" value="{{isset($data) ? $data->schucvu : null}}">
                          </div><!-- /.form group -->

                          <div class="form-group">
                              <label>Năng lực</label>
                              <textarea name="txtNangluc" class="form-control" rows="3">{{isset($data) ? $data->snangluc : null}}</textarea>
                          </div><!--  /.form-group -->

                          <div class="form-group">
                              <label>Thành tựu</label>
                              <textarea name="txtThanhtuu" class="form-control" rows="3">{{isset($data) ? $data->sthanhtuukh : null}}</textarea>
                          </div><!--  /.form-group -->

                          <div class="form-group">
                              <label>Ghi chú thêm</label>
                              <textarea name="txtGhichuthem" class="form-control" rows="3">{{isset($data) ? $data->sghichuthem : null}}</textarea>
                          </div><!--  /.form-group -->

                      </div><!--  /.col-sm-6 -->
                  </div><!-- /.row -->
              </div><!--/.box-body-->

              <div class="box-footer">
                 <span class="pull-right">
                      <strong class="text-red">*</strong> : Thông tin bắt buộc <br>
                  </span>
                  <button type="submit" type="submit" class="btn btn-primary">Lưu thông tin</button>
              </div><!-- /.box-footer -->
            </form>
        </div><!--/.box-->
    </section><!--/.content-->
@endsection


