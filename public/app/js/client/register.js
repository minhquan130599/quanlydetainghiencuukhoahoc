var url = window.location.href;
var lastPart = url.split("/").pop();


$(document).ready(function() {
	$('label').addClass('control-label');
	$('input[name="imgAvatar"]').change(function () {
		readURL(this);
	});

	$('.show-img').click(function(event) {
		$('input[name="imgAvatar"]').click();
	});
});

$(document).ready(function() {
	$('button[type="submit"]').click(function () {
		let rank = $('select[name="txtRank"] option:selected').text();
			rank = (rank != "Khác") ? $('select[name="txtRank"] option:selected').text() + '.' : '';
		let	degree = $('select[name="txtDegree"] option:selected').text();
			degree = (degree != "Khác") ? $('select[name="txtDegree"] option:selected').text() + '.' : '';
		let	user_name =	$('input[name="txtUsername"]').val();
		$('input[name="txtEducation"]').val(rank + degree + user_name);


		// Tạo image tên bằng Canvas
		$last_name = $('input[name="txtUsername"]').val().trim();
		$data_last_name = $last_name.split(' ');
		$name_character = $data_last_name.pop();
		$name_character = $name_character.substr(0, 1);

		// Khai báo các biến canvas
        var canvas = document.getElementById('canvas');
        var context = canvas.getContext('2d');

        // Lấy x, y căn giữa canvas
        var x = canvas.width / 2;
        var y = canvas.height / 2;

   	 	// Phủ màu cho canvas
        context.rect(0, 0, 80, 80);
        context.fillStyle = random_color();
        context.fill();

        // Viết tắt họ và tên lên canvas
        context.font = "30px Arial";
        context.textAlign = "center";
        context.fillStyle = "white";
        context.fillText($name_character, x, y + 10);

        dataAvt = canvas.toDataURL(); // Lấy dữ liệu canas

        if ($('input[name="imgAvatar"]').attr('data-img').length == 0)
        {
        	$.ajax({
				url: '/admin/staff/image',
				type: 'POST',
				data: {
					dataAvt: dataAvt,
					image_name: lastPart == 'create' ? '' : lastPart
				},
				success: function (result)
				{
					$('input[name="img_name_google"]').val(result);
				}
			}); // End ajax
        }
	});
});


function random_color()
{
	var letters = '0123456789ABCDEF';
    var color = '#';
    for (var i = 0; i < 6; i++ ) {
        color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
}