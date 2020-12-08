$(document).ready(function() {
	$(document).on('shown.bs.modal', function () {
		let topic_name = $('select[name="txtDetai"]').find(':selected').text();
		$('.topic-name').text(topic_name);
	});

	$('.btn-block').css({
		'margin-bottom': '2px'
	});
});


$(document).ready(function() {
	$(document).on('change', 'select[name="txtDetai"]', function () {
		if ($(this).val() == '')
			return $('#show-content').html('Không có dữ liệu');

		$.ajax({
			url: BASE_URL + '/admin/expertise-content/ajax',
			type: 'GET',
			headers: {
				'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			},
			data: {
				_token: $('input[name="_token"]').val(),
				id: $(this).val(),
				councilCategory: checkSurvey('survey')
			},
			success: function (response) {
				let length = response.length;
				if (length > 0) {
					$('#show-content').load('/admin/expertise-content/result', {
						data: response,
						headers: {
							'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
						},
						_token: $('input[name="_token"]').val()
					});
				}
				else {
					$('#show-content').html('Không có dữ liệu');
				}
			} // Success
		}); 
	});
});


/**
 * Kiểm tra trong URL có chữ survey hay ko
 * Nếu có chữ survey => Khảo sát
 * Ngược lại là thẩm định
 * @return state
 * Nếu state = 1 (=> Thẩm định)
 * Nếu state = 2 (=> Khảo sát)
 */
function checkSurvey(str) {
	let url = window.location.href;
	if (str == 'survey' && url.toLowerCase().indexOf(str) != -1) {
		return 2;
	}
	return 1;
}
