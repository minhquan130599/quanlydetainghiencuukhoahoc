$(document).ready(function() {
	
	$('.form_validate').validate({
		rules: {
			txtMatkhaucu: "required", 
			txtMatkhaumoi: "required", 
			txtNhaplaimk: {
				equalTo: "input[name='txtMatkhaumoi']"
			}
		},
		messages: {
			txtMatkhaucu: "Không được để trống mật khẩu cũ.", 
			txtMatkhaumoi: "Không được để trống mật khẩu mới.", 
			txtNhaplaimk: "Phải giống mật khẩu mới."}
	});
	function CheckOldPassword() {
		$.ajax({
				url: BASE_URL + '/researcher/password/oldpassword',
				type: 'POST',
				data: {
					"_token": $('input[name="_token"]').val(),
					"password" : $('input[name="txtMatkhaucu"]').val()
				},
				success: function (response) {
					if(response == "fail"){
						$('#mkcu').text('Mật khẩu cũ không đúng');
						return false;
					}
					$('#mkcu').text('');
				}
			});//end ajax
	}

	$(document).on('change','input[name="txtMatkhaucu"]',function(){
		CheckOldPassword();
		
	}); //endchange
});