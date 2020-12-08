<h2 class="text-center text-red">Hết hạn đăng ký đề tài, vui lòng quay lại sau</h2>
<div class="col-md-8 col-md-offset-2">
	<div class="row">
		<div class="col-md-4">
			<b style="padding-left: 70px;">Ngày</b>
		</div>
		<div class="col-md-3">
			<b style="padding-left: 30px;">Giờ</b>
		</div>
		<div class="col-md-3">
			<b style="padding-left: 30px;">Phút</b>
		</div>
		<div class="col-md-2">
			<b style="margin-left: -15px;">Giây</b>
		</div>
	</div>
</div><br>

<div class="clock" style="padding-left: 170px;
 height: 335px"></div>
 <input type="hidden" id="time" value="{{ $time }}">

@section('script')
	<script src="/plugins/flipclock/flipclock.js"></script>
		<script type="text/javascript">
			var clock;
			var time = $('#time').val();
			var para1 = time.substr(1,time.length- 2);
			var para2 = parseInt(time.substr(time.length- 1,1))+1;
			var year = para1+para2;
			$(document).ready(function() {

				// Grab the current date
				//Ngày năm sau
				var currentDate = new Date(year);


				// Set some date in the past. In this case, it's always been since Jan 1
				//var pastDate  = new Date(currentDate.getFullYear(), 0, 1);
				//ngày hiện tại
				var pastDate  = new Date();
				
				// Calculate the difference in seconds between the future and current date
				var diff = currentDate.getTime() / 1000 - pastDate.getTime() / 1000;

				// Instantiate a coutdown FlipClock
				clock = $('.clock').FlipClock(diff, {
					clockFace: 'DailyCounter'
				});
			});
		</script>
@endsection
