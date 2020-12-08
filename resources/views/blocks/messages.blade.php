@if (!empty(Session::get('flash_message')))
	<script type="text/javascript">
		$(document).ready(function() {
			showMessage("{!! Session::get('flash_message') !!}", "{!! Session::get('flash_level') !!}");
		});
	</script>
@endif