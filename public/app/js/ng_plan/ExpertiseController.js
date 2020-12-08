app.controller('ExpertiseController', ExpertiseController);

function ExpertiseController($scope, $http, $log) {
	$scope.getStaff = function () {
		$http({
			method: 'GET',
			url: BASE_URL + "/admin/staff/resource?unitID=" + $scope.expertise.pk_imadv
		}).then(function successCallback(response) {
			$scope.expertise_data = response.data.staff_list;
			$scope.role_data = response.data.role;
		}, function errorCallback(response) {
			// Lỗi thì xử lý
			$log.error.logs;
		});
	}
} // End