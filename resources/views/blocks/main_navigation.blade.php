<header class="main-header">
    <nav class="navbar navbar-static-top navbar-fixed-top">
        <div class="main_container">
            <div class="navbar-header">
                <a title="Trang chào mừng cán bộ" href="{{ route('welcome') }}" class="navbar-brand"><span class="glyphicon glyphicon-home"></span></a>
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                    <i class="fa fa-bars"></i>
                </button>
            </div>
            <!-- Collect  the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
                <ul class="nav navbar-nav">
                    @if (in_array(Auth::user()->pk_imanhomcb, [1, 2]))
                    <li class="dropdown">
                        <a title="Hồ sơ cán bộ tham gia nghiên cứu khoa học" href="#" class="dropdown-toggle" data-toggle="dropdown">Hồ sơ cán bộ <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="{{ route('admin.staff.create') }}">Cập nhật hồ sơ cán bộ</a></li>
                            <li><a href="{{ route('admin.staff.index') }}">Tra cứu hồ sơ cán bộ</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a title="Kế hoạch hoạt động nghiên cứu khoa học" href="#" class="dropdown-toggle" data-toggle="dropdown">Lập kế hoạch <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="{{ route('admin.topic.create') }}">Đăng ký/đề xuất đề tài khoa học</a></li>
                            <li><a href="{{ route('admin.topic.index') }}">Tra cứu đề tài đăng ký</a></li>
                            <li class="divider"></li>
                            <!-- /.divider -->
                            <li><a href="javascript:void(0);">Thẩm định đề tài <span class="caret text-right"></span></a></li>
                            <li class="child-menu"><a href="{{ route('admin.expertise.create') }}">&rarr; Thành lập hội đồng thẩm định</a></li>
                            <li class="child-menu"><a href="{{ route('admin.expertise.index') }}">&rarr; Tra cứu hội đồng thẩm định</a></li>
                            <li class="child-menu"><a href="{{ route('admin.expertise_content.create') }}">&rarr; Nội dung thẩm định(thuyết minh)</a></li>
                            <li class="child-menu"><a href="{{ route('admin.expertise_content.index') }}">&rarr; Kết quả thuyết minh</a></li>
                            <li class="divider"></li>
                            <!-- /.divider -->
                            <li><a href="{{ route('admin.contract.index') }}">Lập hợp đồng</a></li>
                        </ul>
                    </li>
                    <li class="dropdown dropdown-large">
                        <a title="Quá trình triển khai hoạt động nghiên cứu khoa học" href="#" class="dropdown-toggle" data-toggle="dropdown">Triển khai <b class="caret"></b></a>
                        <ul class="dropdown-menu dropdown-menu-large row">
                            <li class="col-sm-4">
                                <ul>
                                    <li><a href="{{ route('deploy.category.index') }}">Danh mục đề tài được triển khai</a></li>
                                    <li><a href="{{ route('admin.expense.index') }}"> Phân bổ kinh phí</a></li>
                                    <li><a href="javascript:void(0);">Khảo sát đề tài</a></li>
                                    <li class="child-menu"><a href="{{ route('admin.survey.create') }}">&rarr; Thành lập hội đồng khảo sát</a></li>
                                    <li class="child-menu"><a href="{{ route('admin.survey.index') }}">&rarr; Tra cứu hội đồng khảo sát</a></li>
                                    <li class="child-menu"><a href="{{ route('admin.survey_content.create') }}">&rarr; Báo cáo tiến độ khảo sát</a></li>
                                    <li class="child-menu"><a href="{{ route('admin.survey_content.index') }}">&rarr; Kết quả khảo sát</a></li>
                                </ul>
                            </li>
                            <li class="col-sm-4">
                                <ul>
                                    <li><a href="{{ route('admin.delay.index') }}">Đề tài chậm muộn</a></li>
                                    <li><a href="{{ route('admin.renewal.index') }}">Gia hạn đề tài</a></li>
                                    <li><a href="{{ route('admin.registration_protect.index') }}">Đăng ký bảo vệ đề tài</a></li>
                                    <li><a href="#">Nghiệm thu đề tài</a></li>
                                    <li class="child-menu"><a href="{{ route('admin.acceptance.create') }}">&rarr; Thành lập hội đồng nghiệm thu</a></li>
                                    <li class="child-menu"><a href="{{ route('admin.acceptance.index') }}">&rarr; Tra cứu hội đồng nghiệm thu</a></li>
                                    <li class="child-menu"><a href="{{ route('admin.acceptance_content.create') }}">&rarr; Nội dung nghiệm thu</a></li>
                                    <li class="child-menu"><a href="{{ route('admin.acceptance_content.index') }}">&rarr; Kết quả nghiệm thu</a></li>
                                </ul>
                            </li>
                            <li class="col-sm-4">
                                <ul>
                                    <li><a href="#">Thanh lý đề tài</a></li>
                                    <li class="child-menu"><a href="{{ route('admin.liquidation.create') }}">&rarr; Thành lập hội đồng thanh lý</a></li>
                                    <li class="child-menu"><a href="{{ route('admin.liquidation.index') }}">&rarr; Tra cứu hội đồng thanh lý</a></li>
                                    <li class="child-menu"><a href="{{ route('admin.liqui_content.index') }}">&rarr; Nội dung và kết quả thanh lý</a></li>
                                    <li><a href="{{ route('admin.product.index') }}">Sản phẩm khoa học</a></li>
                                    <li class="child-menu"><a href="{{ route('admin.acceptance_content.create') }}">&rarr; Cập nhật sản phẩm</a></li>
                                    <li class="child-menu"><a href="{{ route('admin.acceptance_content.index') }}">&rarr; Tra cứu sản phẩm</a></li>
                                </ul>
                            </li>
                            <!-- /.col-sm-3 -->
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a title="Chứng nhận đề tài" href="{{ route('admin.certify.index') }}">Chứng nhận</a>
                    </li>

                    <li class="dropdown dropdown-large">
                        <a title="Các mẫu biểu nghiên cứu khoa học" href="{{ route('admin.form.index') }}">Biểu mẫu</a>
                    </li>
                    <li class="dropdown dropdown-large">
                        <a title="Thống kê số liệu" href="{{ route('admin.statistical.index') }}">Thống kê</a>
                    </li>
                    <li class="dropdown">
                        <a title="Kế hoạch hoạt động nghiên cứu khoa học" href="#" class="dropdown-toggle" data-toggle="dropdown">Danh mục <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="{{ route('admin.notification.index') }}">1. Thông báo</a></li>
                            <li><a href="{{ route('admin.unit.index') }}">2. Đơn vị, trung tâm</a></li>
                            <li><a href="{{ route('admin.topiccategory.index') }}">3. Nhóm đề tài</a></li>
                            <li><a href="{{ route('admin.staffgroup.index') }}">4. Nhóm cán bộ</a></li>
                            <li><a href="{{ route('admin.document.index') }}">5. Văn bản, biểu mẫu</a></li>
                        </ul>
                    </li>
                    <form class="navbar-form navbar-left" role="search" title="Tìm kiếm nâng cao">
                        <div class="form-group">
                            <input type="text" class="form-control" name="q" placeholder="Tìm cán bộ, đề tài NCKH">
                        </div>
                    </form>
                </ul>
                @elseif (Auth::user()->pk_imanhomcb === 4)
                <li class="dropdown dropdown-large">
                    <a title="Mẫu biểu NCKH" href="{{ route('researcher.document') }}">Mẫu biểu NCKH</a>
                </li>
                <li class="dropdown dropdown-large">
                    <a title="Thống kê số liệu" href="{{ route('researcher.registerthread') }}">Đăng ký đề tài NCKH</a>
                </li>

                <li class="dropdown dropdown-large">
                    <a title="Thống kê số liệu" href="{{ route('researcher.outline') }}">Cập nhật đề cương</a>
                </li>

                <li class="dropdown dropdown-large">
                    <a title="Thống kê số liệu" href="{{ route('researcher.deploy') }}">Đề tài đang triển khai</a>
                </li>

                <li class="dropdown dropdown-large">
                    <a title="Thống kê số liệu" href="{{ route('researcher.delay') }}">Gia hạn</a>
                </li>
                <li class="dropdown dropdown-large">
                    <a title="Thống kê số liệu" href="{{ route('researcher.registration') }}">Đăng ký bảo vệ đề tài</a>
                </li>
                <li class="dropdown dropdown-large">
                    <a title="Thống kê số liệu" href="{{ route('researcher.certify') }}">Chứng nhận</a>
                </li>
                <li class="dropdown">
                    <a title="Hồ sơ cán bộ tham gia nghiên cứu khoa học" href="#" class="dropdown-toggle" data-toggle="dropdown">Sản phẩm <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="{{ route('researcher.product.create') }}">Cập nhật sản phẩm</a></li>
                        <li><a href="{{ route('researcher.product.index') }}">Tra cứu sản phẩm</a></li>
                    </ul>
                </li>
                @elseif (Auth::user()->pk_imanhomcb === 3)
                <li class="dropdown dropdown-large">
                    <a title="Thống kê số liệu" href="{{ route('development.manual.create') }}">Cập nhật hướng dẫn sử dụng</a>
                </li>
                <li class="dropdown dropdown-large">
                    <a title="Xem góp ý người dùng" href="{{ route('app.feedback.index') }}">Xem góp ý người dùng</a>
                </li>
                @else
                You don't have permission
                @endif
            </div>
            <!-- /.navbar-collapse -->
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    @inject('metrics', 'App\System\Pushnotification')
                    <li class="dropdown notifications-menu">
                        <a title="Thông báo" href="{{ route('notification.index') }}">
                            <i class="fa fa-bell-o"></i> Thông báo (<span class="notifi"></span>)
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">Bạn có  <span class="notifi"></span> thông báo mới</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li>
                                        @foreach ($metrics->GetNotification() AS $key => $val )
                                        <input type="hidden" class="count" value="{{ sizeof($key) }}">
                                        <a href="#"> <i class="fa fa-globe text-aqua"></i> {{ $val->snoidung }}<br> </a>
                                        @endforeach
                                    </li>
                                </ul>
                            </li>
                            <li class="footer"><a href="#">Xem tất cả</a></li>
                        </ul>
                    </li>
                    <!-- User Account Menu -->
                    <li class="dropdown user user-menu">
                        <!-- Menu Toggle Button -->
                        <a title="Cá nhân" href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <!-- The user image in the navbar-->
                            <!-- hidden-xs hides the username on small devices so only the image appears. -->
                            <span class="hidden-xs">{{ Auth::user()->shodem }} <b class="caret"></b></span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="{{ route('researcher.information.index') }}">Thông tin cá nhân</a></li>
                            <li><a href="{{ route('researcher.achievement') }}">Năng lực thành tựu</a></li>
                            <li><a href="{{ route('science.index') }}">Lý lịch khoa học</a></li>
                            <li class="divider"></li>
                            <li><a href="{{ route('development.manual.show') }}">Xem tài liệu hướng dẫn sử dụng</a></li>
                            <li><a href="{{ route('researcher.password') }}">Đổi mật khẩu</a></li>
                            <li class="divider"></li>
                            <li><a href="{{ route('login.logout') }}">Đăng xuất</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-custom-menu -->
        </div>
        <!-- /.container-fluid -->
    </nav>
</header>
<br /><br />