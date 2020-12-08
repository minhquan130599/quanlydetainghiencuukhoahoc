app.controller('ExpertiseContentController', ExpertiseContentController);
function ExpertiseContentController($scope, $http, $log)
{
	// Lấy dữ liệu từ server
	$scope.getLeader = function (id) {
		$http({
			method: 'GET',
			url: '/admin/expertise-content/leader_source?id=' + id
		}).then(function successCallback(response) {
			// Có dữ liệu trả về
			$scope.leader = response.data;
		}, function errorCallback(response) {
			// Không có dữ liệu trả về
			$log.error.logs;
		});
	} // getLeader
} // End 