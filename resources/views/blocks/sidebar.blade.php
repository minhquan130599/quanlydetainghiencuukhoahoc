<section class="sidebar">
  <!-- Sidebar user panel -->
  <div class="user-panel">
    <div class="pull-left image">
      <img src="{{ Auth::user()->sanh }}" class="img-circle" alt="User Image">
    </div>
    <div class="pull-left info">
      <p>{{ Auth::user()->shodem }}</p>
      <a href="javascript:void(0);" title="Đang hoạt động"><i class="fa fa-circle text-success"></i> Online</a>
    </div>
  </div>
  <!-- search form -->
 @if (in_array(Auth::user()->pk_imanhomcb, [1, 2, 3]))
  <form action="javascript:void(0);" method="get" class="sidebar-form">
    <div class="input-group">
      <input type="text" name="q" id="search-key" class="form-control" placeholder="Tìm kiếm..." title="Tìm kiếm cán bộ hoặc đề tài khoa học">
          <span class="input-group-btn">
            <button type="button" name="search" id="search-btn" class="btn btn-flat" title="Tìm kiếm cán bộ hoặc đề tài khoa học" data-toggle="tooltip"><i class="fa fa-search"></i>
            </button>
          </span>
    </div>
  </form>
@endif
  <!-- /.search form -->
  <!-- sidebar menu: : style can be found in sidebar.less -->
  <ul class="sidebar-menu">
    <li class="header">QUẢN LÝ NGHIÊN CỨU KHOA HỌC</li>
    @if (in_array(Auth::user()->pk_imanhomcb, [1, 2, 3]))
    <li class="treeview">
      <a href="#">
        <i class="fa fa-users"></i> <span>Quản lý hồ sơ cán bộ</span>
        <span class="pull-right-container">
          <i class="fa fa-angle-left pull-right"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        <li><a href="{{ route('admin.staff.create') }}"><i class="fa fa-circle-o"></i> Cập nhật hồ sơ cán bộ</a></li>
        <li><a href="{{ route('admin.staff.index') }}"><i class="fa fa-circle-o"></i> Tra cứu hồ sơ cán bộ</a></li>
      </ul>
    </li>
    <li class="treeview">
      <a href="#">
        <i class="fa fa-list" aria-hidden="true"></i> <span>Lập kế hoạch</span>
        <span class="pull-right-container">
          <i class="fa fa-angle-left pull-right"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        <li><a href="{{ route('admin.topic.create') }}"><i class="fa fa-circle-o"></i> Đăng ký đề tài</a></li>
        <li><a href="{{ route('admin.topic.index') }}"><i class="fa fa-circle-o"></i> Tra cứu thông tin đề tài</a></li>
        <li>
          <a href="">
            <i class="fa fa-circle-o"></i> Thẩm định đề tài
             <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
           <ul class="treeview-menu">
              <li><a href="{{ route('admin.expertise.create') }}"><i class="fa fa-circle-o"></i> Thành lập hội đồng</a></li>
              <li><a href="{{ route('admin.expertise.index') }}"><i class="fa fa-circle-o"></i> Tra cứu hội đồng</a></li>
              <li><a href="{{ route('admin.expertise_content.create') }}"><i class="fa fa-circle-o"></i> Nội dung thẩm định</a></li>
              <li><a href="{{ route('admin.expertise_content.index')}}"><i class="fa fa-circle-o"></i> Kết quả thẩm định</a></li>
           </ul>
        </li>
        <li><a href="{{ route('admin.contract.index') }}"><i class="fa fa-circle-o"></i> Lập hợp đồng</a></li>
        {{-- <li><a href=""><i class="fa fa-circle-o"></i> Bảng kế hoạch</a></li> --}}
      </ul>
    </li>

    <li class="treeview">
      <a href="#">
        <i class="fa fa-list" aria-hidden="true"></i> <span>Triển khai</span>
        <span class="pull-right-container">
          <i class="fa fa-angle-left pull-right"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        <li><a href="{{ route('deploy.category.index') }}"><i class="fa fa-circle-o"></i> Triển khai danh mục</a></li>
        <li><a href=""><i class="fa fa-circle-o"></i> Phân bổ kinh phí</a></li>
        <li>
          <a href="">
            <i class="fa fa-circle-o"></i> Khảo sát giữa kỳ
             <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
           <ul class="treeview-menu">
              <li><a href="{{ route('admin.survey.create') }}"><i class="fa fa-circle-o"></i> Thành lập hội đồng</a></li>
              <li><a href="{{ route('admin.survey.index') }}"><i class="fa fa-circle-o"></i> Tra cứu hội đồng</a></li>
              <li><a href="{{ route('admin.survey_content.create') }}"><i class="fa fa-circle-o"></i> Nội dung khảo sát</a></li>
              <li><a href="{{ route('admin.survey_content.index') }}"><i class="fa fa-circle-o"></i> Kết quả khảo sát</a></li>
           </ul>
        </li>
        <li><a href="{{ route('admin.registration_protect.index') }}"><i class="fa fa-circle-o"></i> Đăng ký bảo vệ đề tài</a></li>
        <li><a href="{{ route('admin.delay.index') }}"><i class="fa fa-circle-o"></i> Đề tài chậm muộn</a></li>
        <li>
          <a href="">
            <i class="fa fa-circle-o"></i> Nghiệm thu đề tài
             <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
           <ul class="treeview-menu">
              <li><a href="{{ route('admin.acceptance.create') }}"><i class="fa fa-circle-o"></i> Thành lập hội đồng</a></li>
              <li><a href="{{ route('admin.acceptance.index') }}"><i class="fa fa-circle-o"></i> Tra cứu hội đồng</a></li>
              <li><a href="{{ route('admin.acceptance_content.create') }}"><i class="fa fa-circle-o"></i> Nội dung nghiệm thu</a></li>
              <li><a href="{{ route('admin.acceptance_content.index') }}"><i class="fa fa-circle-o"></i> Kết quả nghiệm thu</a></li>
           </ul>
        </li>
        <li>
          <a href="">
            <i class="fa fa-circle-o"></i> Thanh lý đề tài
             <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
           <ul class="treeview-menu">
              <li><a href="{{ route('admin.liquidation.create') }}"><i class="fa fa-circle-o"></i> Thành lập hội đồng</a></li>
              <li><a href="{{ route('admin.liquidation.index') }}"><i class="fa fa-circle-o"></i> Tra cứu hội đồng</a></li>
              <li><a href="{{ route('admin.liqui_content.index') }}"><i class="fa fa-circle-o"></i> Nội dung thanh lý</a></li>
           </ul>
        </li>

        <li>
          <a href="">
            <i class="fa fa-circle-o"></i> Sản phẩm khoa học
             <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
           <ul class="treeview-menu">
              <li><a href="{{ route('admin.product.create') }}"><i class="fa fa-circle-o"></i> Cập nhật sản phẩm</a></li>
              <li><a href="{{ route('admin.product.index') }}"><i class="fa fa-circle-o"></i> Tra cứu sản phẩm</a></li>
           </ul>
        </li>
      </ul>
    </li>

    <li class="treeview">
      <a href="{{ route('admin.certify.index') }}">
        <i class="fa fa-flag" aria-hidden="true"></i> <span>Chứng nhận</span>
      </a>
    </li>

    <li><a href="{{ route('admin.form.index') }}"><i class="fa fa-file-pdf-o" aria-hidden="true"></i> In biểu mẫu</a></li>
    <li><a href="{{ route('admin.statistical.index') }}"><i class="fa fa-bar-chart" aria-hidden="true"></i> Thống kê</a></li>

    <li class="treeview">
      <a href="#">
        <i class="fa fa-list" aria-hidden="true"></i> <span>Triển khai</span>
        <span class="pull-right-container">
          <i class="fa fa-angle-left pull-right"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        <li><a href="{{ route('deploy.category.index') }}"><i class="fa fa-circle-o"></i> Triển khai danh mục</a></li>
        <li><a href=""><i class="fa fa-circle-o"></i> Phân bổ kinh phí</a></li>
        <li>
          <a href="">
            <i class="fa fa-circle-o"></i> Khảo sát giữa kỳ
             <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
           <ul class="treeview-menu">
              <li><a href="{{ route('admin.survey.create') }}"><i class="fa fa-circle-o"></i> Thành lập hội đồng</a></li>
              <li><a href="{{ route('admin.survey.index') }}"><i class="fa fa-circle-o"></i> Tra cứu hội đồng</a></li>
              <li><a href="{{ route('admin.survey_content.create') }}"><i class="fa fa-circle-o"></i> Nội dung khảo sát</a></li>
              <li><a href="{{ route('admin.survey_content.index') }}"><i class="fa fa-circle-o"></i> Kết quả khảo sát</a></li>
           </ul>
        </li>
        <li><a href="{{ route('admin.registration_protect.index') }}"><i class="fa fa-circle-o"></i> Đăng ký bảo vệ đề tài</a></li>
        <li><a href="{{ route('admin.delay.index') }}"><i class="fa fa-circle-o"></i> Đề tài chậm muộn</a></li>
        <li>
          <a href="">
            <i class="fa fa-circle-o"></i> Nghiệm thu đề tài
             <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
           <ul class="treeview-menu">
              <li><a href="{{ route('admin.acceptance.create') }}"><i class="fa fa-circle-o"></i> Thành lập hội đồng</a></li>
              <li><a href="{{ route('admin.acceptance.index') }}"><i class="fa fa-circle-o"></i> Tra cứu hội đồng</a></li>
              <li><a href="{{ route('admin.acceptance_content.create') }}"><i class="fa fa-circle-o"></i> Nội dung nghiệm thu</a></li>
              <li><a href="{{ route('admin.acceptance_content.index') }}"><i class="fa fa-circle-o"></i> Kết quả nghiệm thu</a></li>
           </ul>
        </li>
        <li>
          <a href="">
            <i class="fa fa-circle-o"></i> Thanh lý đề tài
             <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
           <ul class="treeview-menu">
              <li><a href="{{ route('admin.liquidation.create') }}"><i class="fa fa-circle-o"></i> Thành lập hội đồng</a></li>
              <li><a href="{{ route('admin.liquidation.index') }}"><i class="fa fa-circle-o"></i> Tra cứu hội đồng</a></li>
              <li><a href="{{ route('admin.liqui_content.index') }}"><i class="fa fa-circle-o"></i> Nội dung thanh lý</a></li>
           </ul>
        </li>

        <li>
          <a href="">
            <i class="fa fa-circle-o"></i> Sản phẩm khoa học
             <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
           <ul class="treeview-menu">
              <li><a href="{{ route('admin.product.create') }}"><i class="fa fa-circle-o"></i> Cập nhật sản phẩm</a></li>
              <li><a href="{{ route('admin.product.index') }}"><i class="fa fa-circle-o"></i> Tra cứu sản phẩm</a></li>
           </ul>
        </li>
      </ul>
    </li>
    <!-- /Modal -->
    <li class="header">QUẢN LÝ THÔNG TIN CÁ NHÂN</li>
    <li><a href="{{ route('researcher.information.index') }}"><i class="fa fa-user"></i> Thông tin cá nhân</a></li>
    <li><a href="{{ route('researcher.achievement') }}"><i class="fa fa-flask"></i> Thành tựu khoa học</a></li>
    <li><a href="{{ route('science.index') }}"><i class="fa fa-calendar"></i> Lý lịch khoa học</a></li>
    <li class="header">HỆ THỐNG</li>
    <li><a href="{{ route('researcher.password') }}"><i class="fa fa-lock"></i> Thay đổi mật khẩu</a></li>
    <li><a href="{{ route('login.logout') }}"><i class="fa fa-sign-out" aria-hidden="true"></i> Đăng xuất</a></li>

    @elseif (Auth::user()->pk_imanhomcb === 4)
        <li class="treeview">
          <a href="#">
            <i class="fa fa-flag" aria-hidden="true"></i> <span>Cập nhật thông tin cá nhân</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="{{ route('researcher.information.index') }}"><i class="fa fa-circle-o"></i> Thông tin cá nhân</a></li>
            <li><a href="{{ route('researcher.achievement') }}"><i class="fa fa-circle-o"></i> Năng lực thành tựu</a></li>
            <li><a href="{{ route('science.index') }}"><i class="fa fa-circle-o"></i> Lý lịch khoa học</a></li>
          </ul>
        </li>
        <li><a href="{{ route('researcher.registerthread') }}"><i class="fa fa-book" aria-hidden="true"></i> Đăng ký đề tài NCKH</a></li>
        <li><a href="{{ route('researcher.outline') }}"><i class="fa fa-pencil-square" aria-hidden="true"></i> Cập nhật đề cương</a></li>
        <!-- <li><a href=""><i class="fa fa-download" aria-hidden="true"></i> Download biểu mẫu</a></li> -->
        <li><a href="{{ route('researcher.delay') }}"><i class="fa fa-bell-o" aria-hidden="true"></i> Gia hạn</a></li>
        <li><a href="{{ route('researcher.registration_protect') }}"><i class="fa fa-calendar" aria-hidden="true"></i> Đăng ký bảo vệ đề tài</a></li>
        <li><a href="{{ route('researcher.certify') }}"><i class="fa-file-word-o" aria-hidden="true"></i> Nộp bản mềm-C.nhận</a></li>
        <!-- <li><a href=""><i class="fa fa-bullhorn" aria-hidden="true"></i> Thông báo</a></li> -->
        <li><a href="{{ route('login.logout') }}"><i class="fa fa-sign-out" aria-hidden="true"></i> Đăng xuất</a></li>
    @else
        You don't have permission
    @endif
  </ul>
</section>


