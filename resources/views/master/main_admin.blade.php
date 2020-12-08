@include('master.header_admin')

    <!-- Main Navigation -->
    @include('blocks.main_navigation')

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Message Notification -->
        @if (!empty(Session::get('flash_message')))
            <div id="alertmessage" class="alert alert-{!! Session::get('flash_level') !!}">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <strong>Thông báo từ hệ thống:</strong>
                {!! Session::get('flash_message') !!}
            </div> <!-- /.alert message -->
        @endif

        @yield('content-header')
        <!-- /.Modal quản lý danh mục -->
        @include('blocks.management_category')

        <div class="show-error">@include('blocks.errors', ['errors' => $errors])</div>
        @yield('content')
    </div><!-- /.content-wrapper -->

@include('master.footer_admin')


