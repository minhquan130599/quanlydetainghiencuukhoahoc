app.controller('FosterController', FosterController);
var routeUrl = '';
var flag = 0;
function FosterController($scope, $http, $log, $rootScope)
{
	$scope.state = 0;
	// Hiển thị danh sách
	var staffID = $scope.staffID;
	show($rootScope, $http, $log, $scope.staffID);

	// Thêm quá trình công tác
	$scope.qtbd_save = function (state, id) {
		
		switch (flag) {
			case 0:
				routeUrl = '/science/foster/store';
				break;

			case 1:
				routeUrl = '/science/foster/update/' + id;
				break;

			default:
				// code
				break;
		}
		
		$http({
			method: 'POST',
			url: routeUrl,
			data: $.param($scope.qtbd),
			headers: {'Content-Type': 'application/x-www-form-urlencoded'}
		}).then(function successCallback(response) {
			// Hiện lại danh sách mới thêm
			showMessage('Cập nhật quá trình bồi dưỡng thành công', 'success');
			$scope.qtbd = {};
			$scope.frmFoster.$setUntouched();
			$scope.frmFoster.$setPristine();
			$('#fosterModal').modal('hide');
			return window.location.href = "/science?tab=3";
			//show($rootScope, $http, $log, $scope.staffID);
		},function errorCallback(response) {
			console.log('error');
		});
	}

	// Xóa quá trình công tác
	$scope.remove_foster = function(id, staffID) {
		var confirmDelete = confirm('Xóa quá trình bồi dưỡng này?');
			if (confirmDelete) {
				$http({
				method: 'POST',
				url: "/science/foster/delete/" + id,
				headers: {'Content-Type': 'application/x-www-form-urlencoded'}
			}).then(function successCallback(response) {
				// Hiện lại danh sách mới thêm
				showMessage('Xóa quá trình bồi dưỡng thành công', 'success');
				show($rootScope, $http, $log, staffID);
			},function errorCallback(response) {
				console.log('error');
			});
		}
	}

	// Lấy dữ liệu quá trình công tác
	$scope.edit_foster = function (id) {
		$http({
			method: 'GET',
			url: "/science/foster/edit/" + id,
		}).then(function successCallback(response) {
			$scope.id = response.data.pk_imaqtbd;
			$scope.qtbd = response.data;
		},function errorCallback(response) {
			console.log('error');
		});

		$('#fosterModal').modal('show');
		flag = 1;
	}
}