app.controller('SpecializeController', SpecializeController);
var flag = 0;
function SpecializeController($scope, $http, $log, $rootScope)
{
	$scope.state = 0;
	// Hiển thị danh sách
	var staffID = $scope.staffID;
	show($rootScope, $http, $log, $scope.staffID);

	// Thêm quá trình công tác
	$scope.qtcm_save = function (state, id) {
		var routeUrl = '';
		switch (flag) {
			case 0:
				routeUrl = '/science/specialize/store';
				break;

			case 1:
				routeUrl = '/science/specialize/update/' + id;
				break;

			default:
				// code
				break;
		}

		$http({
			method: 'POST',
			url: routeUrl,
			data: $.param($scope.qtcm),
			headers: {'Content-Type': 'application/x-www-form-urlencoded'}
		}).then(function successCallback(response) {
			// Hiện lại danh sách mới thêm
			showMessage('Cập nhật quá trình chuyên môn thành công', 'success');
			$scope.qtcm = {};
			$scope.frmSpecialize.$setUntouched();
			$scope.frmSpecialize.$setPristine();
			$('#specializeModal').modal('hide');
			return window.location.href = "/science?tab=2";
			//show($rootScope, $http, $log, $scope.staffID);
		},function errorCallback(response) {
			console.log('error');
		});
	}

	// Xóa quá trình công tác
	$scope.remove_specialize = function(id, staffID) {
		var confirmDelete = confirm('Xóa quá trình chuyên môn này?');
			if (confirmDelete) {
				$http({
				method: 'POST',
				url: "/science/specialize/delete/" + id,
				headers: {'Content-Type': 'application/x-www-form-urlencoded'}
			}).then(function successCallback(response) {
				// Hiện lại danh sách mới thêm
				showMessage('Xóa quá trình chuyên môn thành công', 'success');
				show($rootScope, $http, $log, staffID);
			},function errorCallback(response) {
				console.log('error');
			});
		}
	}

	// Lấy dữ liệu quá trình công tác
	$scope.edit_specialize = function (id) {
		$http({
			method: 'GET',
			url: "/science/specialize/edit/" + id,
		}).then(function successCallback(response) {
			$scope.id = response.data.pk_imaqtcm;
			$scope.qtcm = response.data;
		},function errorCallback(response) {
			console.log('error');
		});

		$('#specializeModal').modal('show');
		flag = 1;
	}
}