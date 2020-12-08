$(document).ready(function() {
    $('label').addClass('control-label');
    $("#datemask, #datemask2").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
});

$(document).ready(function() {
	$('input[type="checkbox"]').on('ifChecked', function(event){
	  	$('.certify').show();
	});

	$('input[type="checkbox"]').on('ifUnchecked', function(event){
	  	$('.certify').hide();
	});
});	

var error = true;
var extArray = ['.doc', '.docx', '.xls', '.xlsx', '.ppt', '.pptx', '.pdf', '.zip', '.rar'];

$('input[name="fAttach"]').bind('change', function () {
    var attach = $(this).val();
    var extension = attach.substr(attach.lastIndexOf('.'));
    error = this.files[0].size > 16777216 ? false : true;
    error = $.inArray(extension, extArray) == -1 ? false : true;
    if (error == false) {
    	alert("File bản mềm nặng quá nặng hoặc định dạng file không đúng định dạng. Xin kiểm tra lại!");
    	$('button[type="submit"]').attr('disabled', true);
    }else {
    	$('button[type="submit"]').removeAttr('disabled')
    }
});