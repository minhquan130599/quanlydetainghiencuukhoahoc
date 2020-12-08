<div class="modal fade" id="{{$id}}">
	<div class="modal-dialog" style="width: 80%;">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">{{$title}}</h4>
			</div>
			<div class="modal-body slimScroll text-left">
                        @if (strstr($id, 'target'))
                              <strong><em><h3>Mục tiêu:</h3></em></strong>
                        @elseif (strstr($id, 'product'))
                              <strong><em><u>Sản phẩm:</u></em></strong>
                        @else
                              <strong><em><u>Nội dung:</u></em></strong>
                        @endif
                              
                        {!! $target !!}
                  </div>
				
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
			</div>
		</div>
	</div>
</div>