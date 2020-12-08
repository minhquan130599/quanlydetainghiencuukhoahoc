app.controller('WorkController', WorkController);
var routeUrl = '';
var flag = 0;
function WorkController($scope, $http, $log, $rootScope)
{
	$scope.state = 0;
	// Hiển thị danh sách
	var staffID = $scope.staffID;
	show($rootScope, $http, $log, $scope.staffID);

	// Thêm quá trình công tác
	$scope.ctdt_save = function (state, id) {
		switch (flag) {
			case 0:
				routeUrl = '/science/work/store';
				break;

			case 1:
				routeUrl = '/science/work/update/' + id;
				break;

			default:
				// code
				break;
		}
		
		$http({
			method: 'POST',
			url: routeUrl,
			data: $.param($scope.ctdt),
			headers: {'Content-Type': 'application/x-www-form-urlencoded'}
		}).then(function successCallback(response) {
			// Hiện lại danh sách mới thêm
			showMessage('Cập nhật công trình đề tài thành công', 'success');
			$scope.ctdt = {};
			$scope.frmWork.$setUntouched();
			$scope.frmWork.$setPristine();
			$('#workModal').modal('hide');
			return window.location.href = "/science?tab=4";
			//show($rootScope, $http, $log, $scope.staffID);
		},function errorCallback(response) {
			console.log('error');
		});
	}

	// Xóa quá trình công tác
	$scope.remove_work = function(id, staffID) {
		var confirmDelete = confirm('Xóa quá công trình đề tài này?');
			if (confirmDelete) {
				$http({
				method: 'POST',
				url: "/science/work/delete/" + id,
				headers: {'Content-Type': 'application/x-www-form-urlencoded'}
			}).then(function successCallback(response) {
				// Hiện lại danh sách mới thêm
				showMessage('Xóa công trình đề tài thành công', 'success');
				show($rootScope, $http, $log, staffID);
			},function errorCallback(response) {
				console.log('error');
			});
		}
	}

	// Lấy dữ liệu quá trình công tác
	$scope.edit_work = function (id) {
		$http({
			method: 'GET',
			url: "/science/work/edit/" + id,
		}).then(function successCallback(response) {
			$scope.id = response.data.pk_imactdt;
			$scope.ctdt = response.data;
		},function errorCallback(response) {
			console.log('error');
		});

		$('#workModal').modal('show');
		flag = 1;
	}
}