<a class="btn btn-primary showQldm sr-only" data-toggle="modal" href='#modalQldm'>QLDM</a>
<div class="modal fade" id="modalQldm">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title">Quản lý danh mục</h4>
      </div>
      <div class="modal-body">
        <center>
      <!-- ====================== DÒNG 1 ======================= -->
          <div class="row">
            <div class="col-sm-3">
              <a href="{{ route('admin.unit.index') }}">
                <img src="/app/images/category.png" class="text-center" />
                Đơn vị, trung tâm
              </a>
            </div><!-- /.col-sm-4 -->

            <div class="col-sm-3">
              <a href="{{ route('admin.topiccategory.index') }}">
                <img src="/app/images/category.png" class="text-center" />
                Nhóm đề tài
              </a>
            </div><!-- /.col-sm-4 -->

            <div class="col-sm-3">
              <a href="{{ route('admin.staffgroup.index') }}">
                <img src="/app/images/category.png" class="text-center" />
                Nhóm cán bộ
              </a>
            </div><!-- /.col-sm-4 -->

            <div class="col-sm-3">
              <a href="">
                <img src="/app/images/category.png" class="text-center" />
                Lĩnh vực đề tài
              </a>
            </div><!-- /.col-sm-4 -->
          </div><!-- /.row --> <hr class="row" />
      <!-- ====================== DÒNG 2 ======================= -->
          <div class="row">
            <div class="col-sm-3">
              <a href="">
                <img src="/app/images/category.png" class="text-center" />
                Đơn vị, trung tâm
              </a>
            </div><!-- /.col-sm-4 -->

            <div class="col-sm-3">
              <a href="">
                <img src="/app/images/category.png" class="text-center" />
                Đơn vị, trung tâm
              </a>
            </div><!-- /.col-sm-4 -->

            <div class="col-sm-3">
              <a href="">
                <img src="/app/images/category.png" class="text-center" />
                Đơn vị, trung tâm
              </a>
            </div><!-- /.col-sm-4 -->

            <div class="col-sm-3">
              <a href="">
                <img src="/app/images/category.png" class="text-center" />
                Đơn vị, trung tâm
              </a>
            </div><!-- /.col-sm-4 -->
          </div><!-- /.row -->
        </center>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
      </div>
    </div>
  </div>
</div>