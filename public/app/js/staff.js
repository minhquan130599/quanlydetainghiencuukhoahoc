$(document).ready(function() {
	if ($('select[name="criteria"]').val() == 'ngaysinh')
	{
		$('input[name="keyword"]').attr('placeholder', 'Tìm cán bộ theo ngày sinh');
		$('input[name="keyword"]').datepick();
	}

	$(document).on('change', 'select[name="criteria"]', function () {
		var criteria = $(this).val();
		switch (criteria)
		{
			case 'hoten':
				$('input[name="keyword"]').attr('placeholder', 'Tìm cán bộ theo họ tên')
										  .datepick('destroy');
				break;

			case 'ngaysinh':
				$('input[name="keyword"]').attr('placeholder', 'Tìm cán bộ theo ngày sinh');
				$('input[name="keyword"]').datepick();
				break;

			case 'dienthoai':
				$('input[name="keyword"]').attr('placeholder', 'Tìm cán bộ theo SĐT')
										  .datepick('destroy');
				break;

			case 'email':
				$('input[name="keyword"]').attr('placeholder', 'Tìm cán bộ theo email')
										  .datepick('destroy');
				break;

			case 'diachi':
				$('input[name="keyword"]').attr('placeholder', 'Tìm cán bộ theo địa chỉ')
										  .datepick('destroy');
				break;

			default:
				$('input[name="keyword"]').attr('placeholder', 'Tìm kiếm theo tiêu chí')
										  .datepick('destroy');
				break;
		}
	});
});