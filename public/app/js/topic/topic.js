/**	
 * Lặp và hiện thị selectbox vai trò
 * của thành viên trong hội đồng
 */
function getSelectBox(response)
{
	let roleLength = response.role.length;
	if (roleLength > 0)
	{
		let selectHTML = "<select class='form-control' name='role'>";
		for (let j=0; j<roleLength; j++)
		{
			selectHTML += "<option value='"+response.role[j].pk_imavt+"'>" + response.role[j].svaitro + "</option>";
		}
		selectHTML += "</select>";
		return selectHTML;
	}

	return null;
}

/**	
 * Reset Modal sau khi close Modal
 * Tránh ghi đè
 */
function resetModal()
{
	$('input, textarea').val('');
	$('select').find('option:eq(0)').prop('selected', true);
	$('.pre-scrollable').find('.table').find('tbody').html('');
}

/**	
 * Khi đóng modal
 * Gọi đến hàm resetModal
 */
$(document).ready(function() {
	$('#showModal').on('hidden.bs.modal', function () {
  		return resetModal();
	});
});


/**	
 * Lấy tất cả các cán bộ thuộc đơn vị unitID 
 * & các cán bộ đó không thuộc danh sách bên dưới
 */
function getStaff(unitID, staff_data) {
	$.ajax({
		url: BASE_URL + "/resourcestaff",
		type: 'POST',
		cache: false,
		headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
		data: {
			unitID: unitID,
			staff_data: staff_data
		},
		success: function (response) {
			if (response.staff_list.length > 0) 
			{
				let tbody = "";	let count = response.staff_list.length;
				for (let i=0; i<count; i++) 
				{
					tbody += "<tr>"; 
						tbody += "<th class='text-center'><input type='checkbox' value='"+ response.staff_list[i].pk_smacanbo +"' name='check[]' /></th>";
						tbody += "<td>" + response.staff_list[i].shodem + "</td>";
						tbody += "<td>" + getSelectBox(response) +"</td>";
						tbody += `
									<td>
										<input type="text" class="form-control" name="congviec" value="" />
									</td>
						`;
					tbody += "</tr>";
				}

				$('.left-staff').html(tbody);
			}
		} // success
	}); // ajax
} // End function


// Khi change selectbox thì gọi đến hàm getStaff()
$(document).ready(function() {
	$(document).on('change', 'select[name="txtUnit"]', function () {
		let unitID = $(this).val();
		var staff_data = [];	var i = 0;
		$('input[type="checkbox"]').not('.sthamgia').each(function () {
			let staffID = $(this).attr('value');
			staff_data.push(staffID);
			i++;
		});

		return getStaff(unitID, staff_data);
	});
});


// Khi click move sang phải, kiểm tra các tr đã có check
$(document).ready(function() {
	$(document).on('click', 'button[name="move"]', function () {
		let i = 0;
		$('input:checked').not('.sthamgia').each(function() {
			row = $(this).closest('tr');
            $('tbody.right-staff').append(row);

            $('#joined').find('input:checkbox').prop('checked', true);
            $('#joined').find('select').removeAttr('name').attr('name','selected[]');
            i++;
		});
	});
});

// Khi click move sang trái
$(document).ready(function () {
	$(document).on('click', 'button[name="remove"]', function () {
		let i = 0;
		$('input:checked').not('.sthamgia').each(function() {
			row = $(this).closest('tr');
            $('tbody.left-staff').append(row);
            $('.table').find('input:checked').prop('checked', false);
            i++;
		});
	});
});

// Check all - remove check all
$(document).on('change', '.sthamgia', function(){
    $(this).parents('.table').find('tbody').find("input:checkbox")
    									   .prop('checked', $(this).prop("checked"));
});


/**	
 * Bấm cập nhật để update thành viên hội đồng
 * Each từng dòng bảng bên phải. Lấy giá trị của mảng làm tham số truyền vào
 */
$(document).ready(function() {
	$(document).on('click', 'button[name="submit"]', function () {
		var post_data = [{
			fk_smacb: null,
			fk_imavaitro: null,
			fk_imahd: null,
			sghichu: ''
		}];	

		var i = 0; var councilID = $(this).val();
		$('#joined > tbody > tr').each(function() {
			post_data[i] = {
				fk_smacb 	 : $(this).find('input[type="checkbox"]').attr('value'),
				fk_imavaitro : $(this).find('select[name="role"]').val(),
				fk_imahd 	 : councilID,
				sghichu  : $('textarea[name="txtDescription"]').val()
			}
			i++;
		});

		// Gửi ajax lên server
		$.ajax({
			url: '/admin/expertise/update_member',
			type: 'POST',
			cache: false,
			headers: {
	            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	        },
			data: {
				post_data: post_data,
				councilID: councilID
			},
			success: function (response) {
				if (response == 'success') {
					showMessage('Cập nhật thành viên hội đồng thành công', 'success');
					return $('#showModal').modal('toggle');
				}

				return showMessage('Đã có lỗi xảy ra. Liên hệ với kỹ thuật viên để được hỗ trợ', 'error');
			}
		});
	}); // End click
});


/**	
 * 1. Khi bấm vào nút icon user. Truyền mã hội đồng vào nút submit
 * 2. Dùng ajax lấy các thông tin thành viên của hội đồng đó
 * 3. Sau đó đẩy vào cột bên phải
 */
// $(document).ready(function() {
// 	$(document).on('click', '.member', function () {
// 		// 1. Truyền mã hội đồng vào nút submit
// 		$('button[name="submit"]').attr('value', $(this).attr('data-value'));

// 		// 2. Dùng ajax lấy các thông tin thành viên của hội đồng đó
// 		$.ajax({
// 			url: '/admin/expertise/member',
// 			type: 'GET',
// 			data: {
// 				id: $(this).attr('data-value')
// 			},
// 			success: function (response) {
// 				if (response.member.length > 0) 
// 				{
// 					let tbody = "";	let count = response.member.length;
// 					for (let i=0; i<count; i++) 
// 					{
// 						tbody += "<tr>"; 
// 							tbody += "<th class='text-center'><input type='checkbox' value='"+ response.member[i].pk_smacanbo +"' name='check' /></th>";
// 							tbody += "<td>" + response.member[i].shodem + "</td>";
// 							tbody += "<td>";
// 								tbody += "<select class='form-control' name='role'>";
// 								for (let j=0, length = response.role.length; j < length; j++) {
// 									tbody += '<option value="'+response.role[j].pk_imavthd+'"';
// 										if (response.member[i].pk_imavthd == response.role[j].pk_imavthd) {
// 											tbody+= 'selected';
// 										}
// 									tbody+= ">";
// 									tbody+= response.role[j].smota;
// 									tbody += "</option>";
// 								}
// 								tbody += "</select>";
// 							tbody += "</td>";
// 						tbody += "</tr>";
// 					}

// 					// 3. Dữ liệu sẽ được đẩy sang bên cột bên phải
// 					$('.right-staff').html(tbody);
// 					$('textarea[name="txtDescription"]').val(response.member[0].sghichu);
// 				}
// 			}
// 		}); // ajax
		
// 		// Lấy tên hội đồng
// 		let council_name = $(this).parents('tr').find('td:nth-child(2)').html();
// 		$('.modal-header').find('p').html('Hội đồng: ' + council_name);
// 	});
// });


$(document).ready(function() {
	$('input[name="search"]').on('keyup', function() {
		var data = $(this).val().split(" ");
		var jo = $(this).parent().find('.table>tbody>tr');
	    if (this.value == "") {
	        jo.show();
	        return;
	    }
	    //hide all the rows
	    jo.hide();

	    //Recusively filter the jquery object to get results.
	    jo.filter(function (i, v) {
	        var $t = $(this);
	        for (var d = 0; d < data.length; ++d) {
	            if ($t.is(":contains('" + data[d] + "')")) {
	                return true;
	            }
	        }
	        return false;
	    }).show();
	});
});