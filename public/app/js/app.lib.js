/**
 * Chuẩn hóa tên tiếng Việt
 * (object) obj: Đối tượng DOM đang thực thi
 */
function unicode_username(obj) {
    var fullName = obj.value;
    var arr      = fullName.split(/\s/);
    var tmp      = "";
    for(index in arr)
    {
        if (arr[index]!= "")
            tmp += arr[index][0].toUpperCase() + arr[index].substring(1).toLowerCase() + ' ';
    }
    if(tmp != "")
    {
        tmp = tmp.substring(0, tmp.length - 1);
    } else {
        tmp = "";
    }
    obj.value = tmp;
}


function lowerCase(obj) {
	obj.value = obj.value.toLowerCase();
}

function upperCase(obj) {
    obj.value = obj.value.toUpperCase();
}

function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#showAvatar').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
    }
}


function showMessage(text, type) {
    let iconMessage = (type == 'success') ? 'glyphicon glyphicon-ok' : 'glyphicon glyphicon-remove';
    return new PNotify({
        icon: iconMessage,
        title: 'Thông báo',
        text: text,
        type: type,
        hide: true,
        addclass: "stack-bottomright",
        delay: 10000
    });
}

function removeTag(text, selector) {
    var wrapped = $("<div>" + text + "</div>");
    wrapped.find(selector).remove();
    return wrapped.html();
}

$(document).ready(function() {
    $('select[name="txtJumpPage"]').change(function(event) {
        let url = $(this).val();
        return window.location.href = url;
    });
});


$(function () {
    if ($('[data-toggle="tooltip"]').length) {
        $('[data-toggle="tooltip"]').tooltip()
    }

    if ($('.select2').length > 0) {
        $('.select2').select2();
    }

    if ($('.datepick').length) {
        $('.datepick').datepick();
        $('.datepick').attr('placeholder', 'ngày/tháng/năm')
    }

    if ($('.iCheck').length) {
        $('.iCheck').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        });
    }


    $('.modal').on('shown.bs.modal', function () {
        $(this).find('img').addClass('img-responsive');
    });
}); // Ready

function removeParameter(url)
{
    var alteredURL = url.split("?")[0];
    return alteredURL;
}

function randomString(len) {
  var str = "";
  for(var i=0; i<len; i++){
    var rand = Math.floor( Math.random() * 62 );
    var charCode = rand+= rand>9? (rand<36?55:61) : 48;
    str += String.fromCharCode( charCode );
  }
  return str;
}

function getParameterByName(name) {
    name           = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex      = new RegExp("[\\?&]" + name + "=([^&#]*)"),
    results        = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

$(document).ready(function() {
    var currentUrl = removeParameter(window.location.href);
    var menu = $('.sidebar-menu').find('a[href="'+currentUrl+'"]');
    if (menu.attr('href') == currentUrl) {
        menu.parents('li').addClass('active');
    }else {
        var functionName = $('.breadcrumb').find('li.active').text().trim();
        var menu = $('.sidebar-menu').find('a:contains('+functionName+')')
                                     .parents('li').addClass('active');
    }
});


/**
 * Jquery autocomplete. Tìm tên cán bộ hoặc đề tài
 */
$(document).ready(function() {
    $('input[name="q"]').autocomplete({
        minLength: 3,
        source: '/search' + $('input[name="q"]').val(),
        method: 'GET',
        response: function(event, ui) {
            if (ui.content.length === 0) {
                $('.empty-text').text('Không tìm thấy').css('color', '#fff');;
            }else {
                $('.empty-text').text('');
            }
        },
        select: function(event, ui) {
            // Khi chọn 1 dòng bất kỳ sẽ chuyển hướng tới URL tương xứng
            return window.location = ui.item.url;
        }
    })
    .click(function () {
        // Click vào form thì sẽ hiển thị lại kết quả truy vấn trước đó
        $(this).autocomplete('search')
    })
    .autocomplete( "instance" )._renderItem = function( ul, item ) {
        // Dữ liệu trả về đc append style cho hợp lý
        return $( "<li>" )
                .append( "<a>" + "<img class='ui-image-result' src='" + item.image + "' />" + item.value + "</a>" )
                .append( "<p><small class='pull-righ'>"+item.info+"</small></p>" )
                .appendTo( ul );
    };



    $(document).on('click', '#categoryManagement', function () {
        $('.showQldm').click();
    });

    // $('button,a,b').tooltip({
    //     placement: 'top'
    // });
});

$(document).ready(function() {
    // Configure/customize these variables.
    var showChar = 150;  // How many characters are shown by default
    var ellipsestext = "...";
    var moretext = "Xem thêm";
    var lesstext = "Rút gọn";
    

    $('.more').each(function() {
        var content = $(this).html();
 
        if(content.length > showChar) {
 
            var c = content.substr(0, showChar);
            var h = content.substr(showChar, content.length - showChar);
 
            var html = c + '<span class="moreellipses">' + ellipsestext+ '&nbsp;</span><span class="morecontent"><span>' + h + '</span>&nbsp;&nbsp;<a href="" class="morelink">' + moretext + '</a></span>';
 
            $(this).html(html);
        }
 
    });
 
    $(".morelink").click(function(){
        if($(this).hasClass("less")) {
            $(this).removeClass("less");
            $(this).html(moretext);
        } else {
            $(this).addClass("less");
            $(this).html(lesstext);
        }
        $(this).parent().prev().toggle();
        $(this).prev().toggle();
        return false;
    });
});

$(document).ready(function() {
    $('#alertmessage').delay(10000).slideUp(500);
});