<footer class="main-footer">
    <div class="pull-right hidden-xs">
        <a href="/author" title="Thông tin bản quyền tác giả và các giấy phép"><b>Giấy phép sử dụng &copy; {{ date('Y', time()) }}</b></a><br>
        <p>
            <b>Hỗ trợ kỹ thuật:</b>nguyen thi my  hoa<br>
            <b>Điện thoại hỗ trợ:</b> <a href="tel:0342447444">0342447444</a>, <a href="tel:0886686332">0886686332</a> <br>
            <b>E-mail:</b>
            <a href="nguyenthimyhoa@gmail.com">nguyenthimyhoa@gmail.com</a>
        </p>
    </div>
    <strong>Hệ thống hỗ trợ quản lý Nghiên cứu khoa học tại HỌC VIỆN KỸ THUẬT MẬT MÃ</strong> <br>
    <b>Phiên bản:</b> 1.0.0 <br />
    <b>Địa chỉ:</b> Phòng quản lý khoa học <br>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    Số 141 Chiến Thắng, Hà Đông, Hà Nội. <br />
    <b>SĐT liên hệ:</b> (08) 86686332 - <b>Fax:</b> (09) 61233574 <br />
    <b>Hệ thống hoạt động tốt trên các trình duyệt:̣
    <a href="">Google Chrome</a>,
    <a href="">Cốc Cốc</a> <i class="fa fa-chrome" aria-hidden="true"></i> -
    <a href="">Firefox</a> <i class="fa fa-firefox" aria-hidden="true"></i> -
    <a href="">Opera</a> <i class="fa fa-opera" aria-hidden="true"></i>
    </b>
</footer>
</div>
<!-- ./wrapper -->


<!-- AngularJS -->
<script src="/app/js/angular.min.js"></script>
<script src="/app/js/angular-sanitize.js"></script>
<script src="/app/js/angular-route.min.js"></script>
<script src="/app/js/app_angular.js"></script>

<!-- jQuery 2.2.3 -->
<script src="/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="/plugins/jQueryUI/jquery-ui.min.js"></script>
<script type="text/javascript">
  $(window).load(function() {
    $(".loader").fadeOut('400');
  });
</script>
<script type="text/javascript">
    $(document).ready(function() {
      $('.notifi').html($('.count').val());
    });
</script>
<!-- Bootstrap 3.3.6 -->
<script src="/bootstrap/js/bootstrap.min.js"></script>
<!-- Datatable -->
<script src="/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/plugins/datatables/dataTables.bootstrap.js"></script>
<!-- PACE -->
<script src="/plugins/pace/pace.min.js"></script>
<!-- SlimScroll -->
<script src="/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="/plugins/fastclick/fastclick.js"></script>
<!-- PNotify -->
<script src="/plugins/pnotify/pnotify.custom.min.js"></script>
<!-- AdminLTE App -->
<script src="/dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/dist/js/demo.js"></script>
<script src="/plugins/datepick/jquery.datepick.js"></script>
<script src="/plugins/select2/select2.full.min.js" type="text/javascript"></script>
<script src="/plugins/jquery-validation/jquery.validate.min.js" type="text/javascript"></script>
<script src="/plugins/jquery-validation/additional-methods.min.js" type="text/javascript"></script>
<script src="/plugins/iCheck/icheck.min.js"></script>

<script src="/app/js/app.lib.js"></script>
<script type="text/javascript">
    const BASE_URL = $('base').attr('href');
    $.ajaxSetup({
       headers: { 'X-CSRF-Token' : $('meta[name=_token]').attr('content') }
    });
</script>

<!-- page script -->
<script type="text/javascript">
  // To make Pace works on Ajax calls
  $(document).ajaxStart(function() { Pace.restart(); });
    $('.ajax').click(function(){
        $.ajax({url: '#', success: function(result){
            $('.ajax-content').html('<hr>Ajax Request Completed !');
        }});
    });
</script>
@yield('script')
</body>
</html>