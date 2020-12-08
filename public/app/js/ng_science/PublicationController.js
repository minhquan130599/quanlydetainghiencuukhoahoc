app.controller('PublicationController', PublicationController);
var flag = 0;
function PublicationController($scope, $http, $log, $rootScope)
{
	$scope.state = 0;
	// Hiển thị danh sách
	var staffID = $scope.staffID;
	show($rootScope, $http, $log, $scope.staffID);

	// Thêm quá trình công tác
	$scope.ap_save = function (state, id) {
		var routeUrl = '';
		switch (flag) {
			case 0:
				routeUrl = '/science/publication/store';
				break;

			case 1:
				routeUrl = '/science/publication/update/' + id;
				break;

			default:
				// code
				break;
		}

		$http({
			method: 'POST',
			url: routeUrl,
			data: $.param($scope.ap),
			headers: {'Content-Type': 'application/x-www-form-urlencoded'}
		}).then(function successCallback(response) {
			// Hiện lại danh sách mới thêm
			showMessage('Cập nhật quá trình chuyên môn thành công', 'success');
			return window.location.href = "/science?tab=5";
		},function errorCallback(response) {
			console.log('error');
		});
	}

	// Xóa quá trình công tác
	$scope.remove_publication = function(id, staffID) {
		var confirmDelete = confirm('Xóa ấn phẩm này?');
			if (confirmDelete) {
				$http({
				method: 'POST',
				url: "/science/publication/delete/" + id,
				headers: {'Content-Type': 'application/x-www-form-urlencoded'}
			}).then(function successCallback(response) {
				// Hiện lại danh sách mới thêm
				showMessage('Xóa ấn phẩm thành công', 'success');
				show($rootScope, $http, $log, staffID);
			},function errorCallback(response) {
				console.log('error');
			});
		}
	}

	// Lấy dữ liệu quá trình công tác
	$scope.edit_publication = function (id) {
		$http({
			method: 'GET',
			url: "/science/publication/edit/" + id,
		}).then(function successCallback(response) {
			$scope.id = response.data.pk_imaap;
			$scope.ap = response.data;
		},function errorCallback(response) {
			console.log('error');
		});


		flag = 1;
	}
}