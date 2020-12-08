<div class="col-sm-6">
    <div class="bs-callout bs-callout-primary">
      <h4>Thông tin</h4>
      Các thông tin cơ bản của cán bộ(VD: họ tên, ngày sinh, giới tính, v.v...)
    </div><!-- /.bs-callout -->

    <div class="form-group">
        <label class="col-sm-4">Họ tên <span class="text-red">*</span></label>
        <div class="col-sm-8">
            <input type="text" name="txtUsername" class="form-control" value="{{ old('txtUsername', isset($staff) ? $staff->shodem : '') }}" autofocus="autofocus" onchange="unicode_username(this);">
        </div>
    </div> <!-- Họ tên -->

    <div class="form-group">
            <label class="col-sm-4">Ngày sinh <span class="text-red">*</span></label>
            <div class="col-sm-8">
                <input type="text" name="dBirthday" class="form-control datepick" placeholder="dd/mm/yyyy" value="{{ old('dBirthday', isset($staff) ? $staff->sngaysinh : '') }}">
            </div>
        </div><!-- Ngày sinh -->

        <div class="form-group">
            <label class="col-sm-4 ">Giới tính <span class="text-red">*</span></label>
            <div class="col-sm-8">
                <select name="txtGender" class="form-control">
                    <option value="">--Chọn giới tính--</option>
                    <option value="Nam" {{ (old('txtGender') == 'Nam') ? 'selected' : ((isset($staff) && $staff->sgioitinh == 'Nam') ? 'selected' : null) }}>Nam</option>
                    <option value="Nữ" {{ (old('txtGender') == 'Nữ') ? 'selected' : ((isset($staff) && $staff->sgioitinh == 'Nữ') ? 'selected' : null) }}>Nữ</option>
                    <option value="Khác" {{ (old('txtGender') == 'Khác') ? 'selected' : ((isset($staff) && $staff->sgioitinh == 'Khác') ? 'selected' : null) }}>Khác</option>
                </select>
            </div>
        </div><!-- giới tính -->

        <div class="form-group">
            <label class="col-sm-4">Điện thoại liên hệ <span class="text-red">*</span></label>
            <div class="col-sm-8">
                <input type="text" name="txtPhoneNumber" class="form-control" value="{{ old('txtPhoneNumber', isset($staff) ? $staff->sdienthoai : '') }}">
            </div>
        </div> <!-- SĐT -->

        <div class="form-group">
            <label class="col-sm-4">E-mail <span class="text-red">*</span></label>
            <div class="col-sm-8">
                <input type="email" name="txtEmail" class="form-control" value="{{ old('txtEmail', isset($staff) ? $staff->semail : '') }}">
            </div>
        </div> <!-- Email -->

         <div class="form-group">
            <label class="col-sm-4">Địa chỉ</label>
            <div class="col-sm-8">
                <input type="text" name="txtAdress" class="form-control" value="{{ old('txtAdress', isset($staff) ? $staff->sdiachi : '') }}">
            </div>
        </div><!-- /.Địa chỉ -->

        <div class="form-group">
            <label class="col-sm-4">Quê quán</label>
            <div class="col-sm-8">
                <input type="text" name="txtHomeTown" class="form-control" value="{{ old('txtHomeTown', isset($staff) ? $staff->squequan : '') }}">
            </div>
        </div><!-- Quê quán -->


        <div class="form-group">
            <label class="col-sm-4">Hộ khẩu</label>
            <div class="col-sm-8">
                <input type="text" name="txtHousehold" class="form-control" value="{{ old('txtHousehold', isset($staff) ? $staff->shokhautt : '') }}">
            </div>
        </div><!-- Hộ khẩu -->


        <div class="form-group">
            <label class="col-sm-4">Dân tộc <span class="text-red">*</span></label>
            <div class="col-sm-8">
                <select name="txtNation" class="form-control">
                    {{ keepSelect($data['nation_list'], 'stendantoc', 'pk_imadantoc', '--Chọn dân tộc--', old('txtNation', isset($staff) ? $staff->pk_imadantoc : null)) }}
                </select>
            </div>
        </div><!-- /.Dân tộc -->

        <div class="form-group">
            <label class="col-sm-4">Tôn giáo <span class="text-red">*</span></label>
            <div class="col-sm-8">
                <select name="txtReligion" class="form-control">
                    {{ keepSelect($data['religion_list'], 'stentongiao', 'pk_imatongiao', '--Chọn tôn giáo--', old('txtReligion', isset($staff) ? $staff->pk_imatongiao : null)) }}
                </select>
            </div>
        </div><!-- Tôn giáo -->
</div><!-- /.col-sm-6 -->

<div class="col-sm-6">
    <div class="bs-callout bs-callout-primary">
      <h4>Thông tin Nghiên cứu khoa học</h4>
      Các thông tin khoa học(VD: đơn vị công tác, chuyên môn, v.v...)
    </div><!-- /.bs-callout -->

    <div class="form-group">
        <label class="col-sm-4">Học hàm <span class="text-red">*</span></label>
        <div class="col-sm-8">
            <select name="txtRank" class="form-control">
                {{ keepSelect($data['rank_list'], 'stenhh', 'pk_imahh', '--Chọn học hàm--', old('txtRank', isset($staff) ? $staff->pk_imahh : null)) }}
            </select>
        </div>
    </div><!-- Học hàm -->

    <div class="form-group">
        <label class="col-sm-4">Học vị <span class="text-red">*</span></label>
        <div class="col-sm-8">
            <select name="txtDegree" class="form-control">
                {{ keepSelect($data['degree_list'], 'stenhv', 'pk_imahv', '--Chọn học vị--', old('txtDegree', isset($staff) ? $staff->pk_imahv : null)) }}
            </select>
        </div>
    </div><!-- Học vị -->

    <div class="form-group">
        <label class="col-sm-4">Chuyên ngành <span class="text-red">*</span></label>
        <div class="col-sm-8">
            <select name="txtSpecialize" class="form-control">
                {{ keepSelect($data['specialize_list'], 'stencn', 'pk_imacn', '--Chọn chuyên ngành--', old('txtSpecialize', isset($staff) ? $staff->pk_imacn : null)) }}
            </select>
        </div>
    </div><!-- Chuyên ngành -->

    <!-- Nếu là admin thì được chọn nhóm cán bộ -->
    @if (isset($role) && $role == 'admin')
    <div class="form-group">
        <label class="col-sm-4">Nhóm cán bộ <span class="text-red">*</span></label>
        <div class="col-sm-8">
            <select name="txtStafGroup" class="form-control">
                {{ keepSelect($data['staffgroup_list'], 'stennhomcb', 'pk_imanhomcb', '--Chọn nhóm cán bộ--', old('txtStafGroup', isset($staff) ? $staff->pk_imanhomcb : null)) }}
            </select>
        </div>
    </div><!-- Nhóm cán bộ -->
    @endif

    <div class="form-group">
        <label class="col-sm-4">Đơn vị công tác <span class="text-red">*</span></label>
        <div class="col-sm-8">
            <select name="txtUnit" class="form-control">
                {{ keepSelect($data['unit_list'], 'stendv', 'pk_imadv', '--Chọn đơn vị công tác--', old('txtUnit', isset($staff) ? $staff->pk_imadv : null)) }}
            </select>
        </div>
    </div><!-- Học vị -->

    <div class="form-group">
        <label class="col-sm-4">Ghi chú</label>
        <div class="col-sm-8">
            <textarea name="txtNote" class="form-control" rows="1">{{ old('txtNote', isset($staff) ? $staff->sghichu : null) }}</textarea>
        </div>
    </div><!-- /.Ghi chú -->

    <div class="bs-callout bs-callout-primary">
        <h4>Thông tin hệ thống</h4>
        Các thông tin về tài khoản, mật khẩu hệ thống
    </div><!-- /.bs-callout -->

    <div class="form-group">
        <label class="col-sm-4">Ảnh đại diện</label>
        <div class="col-sm-8">
            <input type="file" name="imgAvatar" class="sr-only" data-img="{{ isset($staff) ? $staff->sanh: null }}" />
            <div class="show-img" width="100%">
                <img src="{{ isset($staff) ? $staff->sanh: null }}" alt="Bấm vào đây để chọn ảnh đại diện" id="showAvatar" class="img-responsive" />
                <p class="help-block">Ảnh chân dung có phần mở rộng là jpg, jpeg, png &amp; có dung lượng không quá 1MB</p><!--  /.help-block -->
            </div><!--  /.show-img -->
        </div>
    </div> <!-- Email -->

    @if (Route::currentRouteName() != 'admin.staff.edit')
    <div class="form-group">
        <label class="col-sm-4">Tên đăng nhập <span class="text-red">*</span></label>
        <div class="col-sm-8">
            <input type="text" name="txtUserAccount" class="form-control" value="{{ old('txtUserAccount', isset($staff) ? $staff->stendn : '') }}" placeholder="Tối thiểu 5 ký tự" onkeyup="lowerCase(this);">
            <p class="help-block">Tên đăng nhập là các chữ cái in thường viết liền không dấu, không khoảng trắng, các số, dấu chấm, gạch ngang, gạch dưới</p><!--  /.help-block -->
        </div>
    </div> <!-- Email -->

    <div class="form-group">
        <label class="col-sm-4">Mật khẩu <span class="text-red">*</span></label>
        <div class="col-sm-8">
            <input type="password" name="txtPassword" class="form-control" value="{{ old('txtPassword') }}" placeholder="Mật khẩu hệ thống">
        </div>
    </div> <!-- Email -->
    @endif

    <input type="hidden" name="txtEducation" />
</div><!-- /.col-sm-6 -->