// $(document).ready(function() {
// 	var newOption = new Option('Text', 'ID', true, true);
// 	$("#select2").append(newOption).trigger('change');
// });

$(document).ready(function() {
	$(document).on('change', function() {
		var topic = $('select[name="txtDetai"]').val();
		var form = $('input[name="txtBieumau"]:checked').val();

		if (topic && form)
		{
			$('button[name="submit"]').attr('disabled', false);
		}
		else
		{
			$('button[name="submit"]').attr('disabled', true);
		}
	});
});


$(document).ready(function() {
	$(document).on('change', 'select[name="txtLoaidetai"]', function() {
		var topic_category_id = $(this).val();
		get_topic_by_category(topic_category_id);
	});

	// $(document).on('click', 'button[name="submit"]', function() {
	// 	var value = $('input[type="radio"]:checked').val();
	// 	alert(value);
	// 	return window.open('/admin/' + value, '_blank');
	// });

	$(document).on('change', 'select[name="txtDetai"]', function () {
		if ($(this).val() == '')
		{
			$('#form_list').addClass('sr-only');
			$('#status').text('');
		}
		else {
			$('#form_list').removeClass('sr-only');

			var href = '';
			var topicID = $(this).val();
			$('ol>li').each(function () {
				var currentHref = $(this).find('a').attr('data-http');
				$(this).find('a').attr('href', currentHref + '/' + topicID);
			});

			$.ajax({
				url: '/admin/form/get_status',
				type: 'POST',
				data: {
					topicID: topicID
				},
				success: function (response)
				{
					$('#status').text('Trạng thái: ' + response.stentt);
				}
			})
		}
	});
});


function get_topic_by_category(topic_category_id)
{
	$("#select2").find('option:not(option:eq(0))').remove();

	// Nếu không có id. Click chọn đề tài
	if (topic_category_id.length == 0)
	{
		return $("#select2").find('option:eq(0)').attr('selected', true);
	}

	$.ajax({
		url: "/admin/form/get_topic_data",
		type: 'GET',
		data: {
			topic_category_id: topic_category_id
		},
		success: function (result)
		{
			var count = result.length;
			if (count > 0)
			{
				for (var i = 0; i < count; i++)
				{
					var newOption = new Option(result[i].stendt, result[i].pk_imadt);
					$("#select2").append(newOption);
				}

				$("#select2").find('option:eq(0)').attr('selected', true);
			}
			else {
				swal("Không có dữ liệu");
				$('#form_list').addClass('sr-only');
			}

		}
	});
}
