@if ((!old('txtNation') || !old('txtReligion')) && Route::currentRouteName() == $routeName)
	<script>
		$(document).ready(function() {
			$('select[name="txtNation"], select[name="txtReligion"]').find('option:eq(1)').attr('selected', true);
		});
	</script>
@endif