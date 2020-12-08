@extends('master.main_admin')
@section('title', 'Nội dung nghiệm thu đề tài')
@section('content-header')
    <section class="content-header">
        <h1>
	        Triển khai
	        <small>Nội dung nghiệm thu</small>
   	 	</h1>
	    <ol class="breadcrumb">
	        <li><a href="#">Triển khai</a></li>
	        <li>Nghiệm thu đề tài</li>
	        <li class="active">Nội dung nghiệm thu</li>
	    </ol>
    </section>
@endsection <!-- /.content-header -->

@section('content')
	<form action="{{ route('admin.acceptance_content.store') }}" method="POST" class="form-horizontal" autocomplete="off">
		<input type="hidden" name="_token" value="{!! csrf_token() !!}" />
		<section class="content">
			<div class="box box-info">
				<div class="box-header with-border">
	                <h3 class="box-title">Nội dung nghiệm thu</h3>
	                <a href="" id="detail" class="btn btn-link pull-right no-padding sr-only" target="_blank">Xem chi tiết đề tài</a>
	                <p>
	                	<strong class="text-red">Đề tài khoa học chỉ nghiệm thu 1 lần duy nhất</strong><br />
	                	<small>Di chuột vào các đề mục hoặc xem <a href="javascript:void(0);" class="moveToNeo">diễn giải</a> để hiển thị chi tiết</small>
	               	</p>
	            </div><!--/.box-header-->

				@include('deploy.acceptance_content._form', ['data' => $data])
	        </div><!-- /.box -->
	    </section>
    </form>

    @include('deploy.acceptance_content._explain')
@endsection <!-- /.content -->


@section('script')
     <script type="text/javascript">
        $(document).ready(function() {
            $('.moveToNeo').click(function () {
                $('html,body').animate({
                    scrollTop: $("#explain").offset().top
                }, 'slow');
            });

            $('label').attr('data-toggle', 'tooltip');
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function() {
            $('select[name="txtDetai"]').change(function () {
                var id = $(this).val();
                if (id.length > 0)  {
                    $('#detail').attr('href', 'admin/deploy/show/' + id)
                                .removeClass('sr-only');
                }
                else {
                    $('#detail').addClass('sr-only');
                }

            });
        });
    </script>
@endsection

