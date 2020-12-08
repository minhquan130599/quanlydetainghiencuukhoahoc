var state = 'add';
var topicID;	// Biến toàn cục dùng để gửi giá trị lên server để bắt trùng mã số đề tài

function addContract()
{
	var contractObject = {
		'dngaylap': $('input[name="txtNgaylap"]').val(),
		'snguoiky': $('input[name="txtNguoiky"]').val(),
		'ssohieu': $('input[name="txtSohieu"]').val(),
		'sghichu': $('textarea[name="txtGhichu"]').val(),
		'fk_imadt': $('select[name="txtDetai"]').val(),
		'smasodetai': $('input[name="txtMaso"]').val()
	}

	$.ajax({
		url: BASE_URL + '/admin/contract/store',
		type: 'POST',
		headers: {
			'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
		},
		data: {
			"_token": $('input[name="_token"]').val(),
			"post_data": contractObject
		},
		success: function (response) {
			return window.location.href = BASE_URL + '/admin/contract';
		}
	});
} // function


function updateContract(contractID)
{
	var contractObject = {
		'dngaylap': $('input[name="txtNgaylap"]').val(),
		'snguoiky': $('input[name="txtNguoiky"]').val(),
		'ssohieu': $('input[name="txtSohieu"]').val(),
		'sghichu': $('textarea[name="txtGhichu"]').val(),
		'smasodetai': $('input[name="txtMaso"]').val()
	}

	$.ajax({
		url: BASE_URL + '/admin/contract/update/' + contractID ,
		type: 'POST',
		cache: false,
		headers: {
			'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
		},
		data: {
			"post_data": contractObject,
			'id': contractID
		},
		success: function (response) {
			return window.location.href = BASE_URL + '/admin/contract';
		}
	});
} // functions


function getContract(contractID)
{
	$.ajax({
		url: BASE_URL + '/admin/contract/edit/' + contractID ,
		type: 'PUT',
		data: {
			"_token": $('input[name="_token"]').val()
		},
		success: function (response) {
			$('.topic_name').text("Đề tài: " + response.stendt);
			$('button[name="submit"]').attr('id', contractID);

			$('input[name="txtNgaylap"]').val(response.dngaylap);
			$('input[name="txtNguoiky"]').val(response.snguoiky);
			$('input[name="txtSohieu"]').val(response.ssohieu);
			$('textarea[name="txtGhichu"]').val(response.sghichu),
			$('input[name="txtMaso"]').val(response.smasodetai)
		}
	});
}


function save(contractID) {
	// Tham số contractID chỉ dùng khi update
	$('label').addClass('control-label');
	state == 'add' ? addContract() : updateContract(contractID)
}


function clearForm() {
	state = 'add';
	$('form[name="frmContract"] > .modal-body .form-group:first').show();
	$('input[type="text"], input[type="password"], input[type="email"], textarea').val('');
	$('select[name="txtDetai"]').val($('select[name="txtDetai option:first-child').val()).trigger('change');
	$('label.error').remove();
};

$(document).ready(function() {
	$('a[href="#contractModal"]').click(function () {
		$('form[name="frmContract"] > .form-group:first').show();
		$('.topic_name').text('');
	});
});

$(document).ready(function() {
	$(document).on('hidden.bs.modal', function (event) {
	   	clearForm();
	});
});

$(document).ready(function () {
	$('input[name="txtSohieu"], input[name="txtMaso"]').keyup(function(event) {
		return this.value = this.value.toUpperCase();
	});
});

/**
 * Hiển thị form Cập nhật thông tin hợp đồng
 */
$(document).ready(function() {
	$(document).on('click', '.edit-contract', function () {
		state = 'edit';		topicID = $(this).attr('data-topicID');
		$('form[name="frmContract"] > .modal-body .form-group:first').hide();
		let contractID = $(this).attr('data-value');
		return getContract(contractID);
	});
});


$(document).ready(function() {
	$('form[name="frmContract"]').validate({
        rules: {
        	txtDetai: {
        		required: true
        	},
            txtMaso: {
                required: true,
                remote: {
			        url: BASE_URL + "/admin/contract/check",
			        type: "GET",
			        data: {
			          	txtMaso: function() {
			            	return $('input[name="txtMaso"]').val();
			          	},

		          		topicID: function () {
		          			let id = (state == 'edit') ? topicID : '';
		          			return id;
		          		}
			        }
			    }
            },

            txtNguoiky:  {
                required: true
            },

            txtSohieu: {
                required: true,
                remote: {
			        url: BASE_URL + "/admin/contract/check-contract-number",
			        type: "GET",
			        data: {
			          	txtSohieu: function() {
			            	return $('input[name="txtSohieu"]').val();
			          	},

			          	contractID: function () {
		          			let contractID = (state == 'edit') ? $('button[name="submit"]').attr('id') : '';
		          			return contractID;
		          		}
			        }
			    }
            },

            txtNgaylap: {
                required: true
            }
        }, // rules

        messages: {
        	txtDetai: {
        		required: "<span class='text-red'>Vui lòng chọn đề tài</span>",
        	},
            txtMaso: {
                required: "<span class='text-red'>Vui lòng nhập mã số đề tài</span>",
                remote: "<span class='text-red'>Mã số đề tài đã tồn tại</span>"
            },

            txtNguoiky: {
                required: "<span class='text-red'>Vui lòng nhập người ký hợp đồng</span>"
            },

            txtSohieu: {
                required: "<span class='text-red'>Vui lòng nhập số hiệu hợp đồng</span>",
                remote: "<span class='text-red'>Số hiệu hợp đồng đã tồn tại</span>"
            },

            txtNgaylap: {
                required: "<span class='text-red'>Vui lòng nhập ngày lập</span>"
            }
        }, // messages

        submitHandler: function () {
        	let contractID = $('button[name="submit"]').attr('id');
        	save(contractID);
        }
    });
});
