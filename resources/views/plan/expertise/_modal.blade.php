    <div class="modal fade" id="showModal">
    <div class="modal-dialog modal-lg" style="width: 70%;">
    	<div class="modal-content">
    		<div class="modal-header">
    			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    			<h4 class="modal-title">Cập nhật thông tin thành viên hội đồng</h4>
                <p></p>
    		</div><!-- /.modal-header -->

    		<div class="modal-body">
                <form action="" method="POST" autocomplete="off" class="form-horizontal">
                    <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                    <div class="row">
                        <div class="col-sm-12">
                        	<div class="form-group">
                        		<label class="control-label col-sm-2">Đơn vị <span class="text-red required">*</span></label>
                        		<div class="col-sm-10">
                                    <select name="txtUnit" id="chondonvi" class="form-control" required="required">
                                    	<option value="" selected="selected">--Chọn đơn vị--</option>
                            			<option value="all">Tất cả</option>
                                        @foreach ($data['unit_list'] AS $unit)
                                        <option value="{{ $unit->pk_imadv }}">{{ $unit->stendv }}</option>
                                        @endforeach
                                    </select>
                            	</div><!-- /.col-sm-10 -->
                        	</div><!--  /.form-group -->

                            <div class="form-group">
                                <label class="control-label col-sm-2">Ghi chú</label>
                                <div class="col-sm-10">
                                    <textarea name="txtDescription" class="form-control" rows="1"></textarea>
                                </div><!--  /.col-sm-10 -->
                            </div><!--  /.form-group -->
                        </div>
                    </div> <!-- /.row --> 

                    <hr class="row divider" />

                    <div class="row">
                        <!-- Từ danh sách đơn vị => Lấy ra danh sách cán bộ -->
                        <div class="col-sm-5">
                            <label>Danh sách cán bộ</label>
                            <input type="text" name="search" class="form-control" width="90%" placeholder="Tìm kiếm cán bộ..." /> <br />
                            <div class="pre-scrollable">
                                <table class="table table-bordered table-hover" id="not-joined">
                                    <thead>
                                        <tr class="active">
                                            <th class="text-center">
                                                <input type="checkbox" id="notJoinList" class="sthamgia">
                                            </th>
                                            <th>Cán bộ</th>
                                            <th>Vai trò</th>
                                        </tr>
                                    </thead>

                                    <tbody class="left-staff"></tbody>
                                </table>
                            </div>
                        </div> <!-- /.col-5 -->

                        <!-- Nút chuyển -->
                        <div class="col-sm-2 text-center">
                            <button type="button" class="btn btn-primary" name="move">
                            	<span class="glyphicon glyphicon-arrow-right"></span>
                            </button> <br /><br />
                            
                            <button type="button" class="btn btn-primary" name="remove">
                            	<span class="glyphicon glyphicon-arrow-left"></span>
                            </button>
                        </div> <!-- /.col-2 -->

                        <!-- Danh sách cán bộ được chọn làm thành viên hội đồng -->
                        <div class="col-sm-5">
                            <label>Danh sách cán bộ của hội đồng</label>
                            <input type="text" name="search" class="form-control" width="90%" placeholder="Tìm kiếm cán bộ..." /> <br />

                            <div class="pre-scrollable">
                                <table class="table table-bordered table-hover" id="joined">
                                    <thead>
                                    	<tr class="active">
                                    		<th class="text-center">
                                                <input type="checkbox" id="joinList" class="sthamgia">
                                            </th>
                                    		<th>Cán bộ</th>
                                    		<th>Vai trò</th>
                                    	</tr>
                                    </thead>

                                    <tbody class="right-staff"></tbody>
                                </table>
                            </div>
                        </div> <!-- /.col-5 -->
                    </div> <!-- /.row -->
                </form> 
            </div><!-- /.modal-body -->

    		<div class="modal-footer">

    			<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
    			<button type="button" name="submit" class="btn btn-primary">Cập nhật</button>
    		</div><!-- /.modal-footer -->
    	</div>
    </div>
</div>