$(document).ready(function() {
    if ($('select[name="criteria"]').val() == 'ngaythanhlap')
    {
        $('input[name="keyword"]').attr('placeholder', 'Tìm hội đồng theo ngày thành lập');
        $('input[name="keyword"]').datepick();
    }

    if ($('select[name="criteria"]').val() == 'ngaylamviec')
    {
        $('input[name="keyword"]').attr('placeholder', 'Tìm hội đồng theo ngày làm việc');
        $('input[name="keyword"]').datepick();
    }

    $(document).on('change', 'select[name="criteria"]', function () {
        var criteria = $(this).val();
        switch (criteria)
        {
            case 'tenhoidong':
                $('input[name="keyword"]').attr('placeholder', 'Tìm hội đồng theo tên')
                                          .datepick('destroy');
                break;

            case 'quyetdinh':
                $('input[name="keyword"]').attr('placeholder', 'Tìm hội đồng quyết định')
                                          .datepick('destroy');
                break;

            case 'ngaythanhlap':
                $('input[name="keyword"]').attr('placeholder', 'Tìm hội đồng theo ngày thành lập');
                $('input[name="keyword"]').datepick();
                break;

            case 'ngaylamviec':
                $('input[name="keyword"]').attr('placeholder', 'Tìm hội đồng theo ngày làm việc');
                $('input[name="keyword"]').datepick();
                break;

            case 'maso':
                $('input[name="keyword"]').attr('placeholder', 'Tìm hội đồng theo mã số')
                                          .datepick('destroy');
                break;


            default:
                $('input[name="keyword"]').attr('placeholder', 'Tìm kiếm theo tiêu chí')
                                          .datepick('destroy');
                break;
        }
    });
});