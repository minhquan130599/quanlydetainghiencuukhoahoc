app.controller('ScienceController', ScienceController);
function ScienceController($scope, $http, $log)
{
	// state trạng thái
	$scope.state = 0;

	// Hiển thị danh sách
	var staffID = $scope.staffID;
	show($scope, $http, $log, staffID);

	// Thêm quá trình công tác
	$scope.qtct_save = function (state, id) {
		var routeUrl = '';
		switch (state) {
			case 0:
				routeUrl = '/science/business/store';
				break;

			case 1:
				routeUrl = '/science/business/update/' + id;
				break;
		}

		$http({
			method: 'POST',
			url: routeUrl,
			data: $.param($scope.qtct),
			headers: {'Content-Type': 'application/x-www-form-urlencoded'}
		}).then(function successCallback(response) {
			// Hiện lại danh sách mới thêm
			showMessage('Cập nhật quá trình công tác thành công', 'success');
			$scope.qtct = {};
			$scope.frmBusiness.$setUntouched();
			$scope.frmBusiness.$setPristine();
			$scope.state = 0;
			return show($scope, $http, $log, staffID); 
		},function errorCallback(response) {
			console.log('error');
		});
	}

	// Xóa quá trình công tác
	$scope.remove_business = function(id) {
		var confirmDelete = confirm('Xóa quá trình công tác này?');
			if (confirmDelete) {
				$http({
				method: 'POST',
				url: "/science/business/delete/" + id,
				headers: {'Content-Type': 'application/x-www-form-urlencoded'}
			}).then(function successCallback(response) {
				// Hiện lại danh sách mới thêm
				showMessage('Xóa quá trình công tác thành công', 'success');
				return show($scope, $http, $log, staffID);
			},function errorCallback(response) {
				console.log('error');
			});
		}
	}

	// Lấy dữ liệu quá trình công tác
	$scope.edit_business = function (id) {
		$scope.state = 1;
		$http({
			method: 'GET',
			url: "/science/business/edit/" + id,
		}).then(function successCallback(response) {
			$scope.id = response.data.pk_imaqtct;	// Gán mã sau này dùng để update
			$scope.qtct = response.data;
		},function errorCallback(response) {
			console.log('error');
		});
	}
} // End function
