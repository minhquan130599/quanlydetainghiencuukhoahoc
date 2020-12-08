app.controller('StaffController', StaffController);

function StaffController($scope, $http, $log)
{
	let staffID = getLastSegment(window.location.href);
	$http({
		method: 'GET',
		url: '/admin/staff/info/' + staffID
	}).then(function successCallback(response) {
		$scope.staff       = response.data.info;
		$scope.business    = response.data.business.length > 0 ? response.data.business : false;
		$scope.specialize  = response.data.specialize.length > 0 ? response.data.specialize : false;
		$scope.foster      = response.data.foster.length > 0 ? response.data.foster : false;
		$scope.work        = response.data.work.length > 0 ? response.data.work : false;
		$scope.publication = response.data.publication.length > 0 ? response.data.publication : false;
		$scope.achievement = response.data.achievement ? response.data.achievement : false;
		$scope.topic_join  = response.data.topic_join.length > 0 ? response.data.topic_join : false;
		$scope.council     = response.data.council.length > 0 ? response.data.council : false;
	}, function errorCallback(response) {
		$log.error.logs;
	});
} // End 

function getLastSegment(url) {
	let lastSegmentPosition = url.lastIndexOf('/');
	return url.substr(lastSegmentPosition + 1);
}