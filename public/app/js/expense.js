$(document).ready(function() {
    $(document).on('keyup', 'input[name="TxtKinhphi"]', function () {
        $.ajax({
            url: '/admin/expense/money_resource',
            type: 'POST',
            data: {
                money: $(this).val()
            },
            success: function (response) {
                $('input[name="txtSotien"]').val(response);
            }
        });
    });
});


$(document).ready(function() {
    $(document).on('change', 'select[name="TxtDetai"]', function () {
        $.ajax({
            url: '/admin/expense/expense_topic',
            type: 'POST',
            data: {
                topicID: $(this).val()
            },
            success: function (response) {
                if (response.length)
                {
                    console.log(response);
                    $('#result').html('').html(response);
                }
            }
        });
    });
});