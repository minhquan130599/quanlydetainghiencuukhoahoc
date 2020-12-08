@if (count ($data['paginatorContent']))
<?php $url_parameter = ''; $count = 0; ?>
@if (!empty ($search_data))
	@foreach ($search_data AS $key => $val)
		<?php 
			$url_parameter .= ($count == 0) ? sprintf('?%s=%s', $key, $val) : sprintf('&%s=%s', $key, $val); 
			$count++;
		?>
	@endforeach
@endif
<div class="box-footer">
	<div class="row">
       	<div class="col-sm-7">
       		{{ $data['paginatorContent']->appends($search_data)->links() }}
       	</div>
        
       <div class="col-sm-5 no-margin">
       	<div class="row">
	       	<label class="pdt6 col-sm-4">Đến trang</label>
		       	<div class="col-sm-8">
		            <select name="txtJumpPage" class="form-control select2">
		            	@for ($i=1; $i<=$data['paginatorContent']->lastPage(); $i++)
		            	<option value="{{ sprintf('%s%s&page=%s', url()->current(), $url_parameter, $i) }}" {{ $data['paginatorContent']->currentPage()== $i ? 'selected' : null }}>Trang {{ $i }}</option>
		            	@endfor
		            </select>
		        </div>
	       </div>
       </div>
   </div>
</div><!-- /.box-footer -->
@endif