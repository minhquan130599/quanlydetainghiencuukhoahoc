var app = angular.module('myApp', ['ngSanitize']);
app.config(function($interpolateProvider) {
    $interpolateProvider.startSymbol('<%');
    $interpolateProvider.endSymbol('%>');
});

// Hiển thị quá trình công tác
function show($rootScope, $http, $log, id)
{
	if (typeof id !== "undefined") {
		$http({
			method: 'GET',
			url: '/admin/staff/info/' + id
		}).then(function successCallback(response) {
			$rootScope.business    = response.data.business.length > 0 ? response.data.business : false;
			$rootScope.specialize  = response.data.specialize.length > 0 ? response.data.specialize : false;
			$rootScope.foster      = response.data.foster.length > 0 ? response.data.foster : false;
			$rootScope.work        = response.data.work.length > 0 ? response.data.work : false;
			$rootScope.publication = response.data.publication.length > 0 ? response.data.publication : false;
			$rootScope.achievement = response.data.achievement ? response.data.achievement : false;
		}, function errorCallback(response) {
			$log.error.logs;
		});
	}else {
		$log.error.logs;
	}
}

	





