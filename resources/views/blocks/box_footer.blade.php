@if (count ($data['paginatorContent']))
<div class="box-footer">
	<div class="row">
       	<div class="col-sm-7">
       		{{ $data['paginatorContent']->appends(['keyword' => $data['keyword']])->links() }}
       	</div>
        
       <div class="col-sm-5 no-margin">
       	<div class="row">
	       	<label class="pdt6 col-sm-4">Đến trang</label>
		       	<div class="col-sm-8">
		            <select name="txtJumpPage" class="form-control select2">
		            	@for ($i=1; $i<=$data['paginatorContent']->lastPage(); $i++)
		            	<option value="{{ sprintf('%s?keyword=%s&page=%s', url()->current(), urlencode($data['keyword']), $i) }}" {{ $data['paginatorContent']->currentPage()== $i ? 'selected' : null }}>Trang {{ $i }}</option>
		            	@endfor
		            </select>
		        </div>
	       </div>
       </div>
   </div>
</div><!-- /.box-footer -->
@endif