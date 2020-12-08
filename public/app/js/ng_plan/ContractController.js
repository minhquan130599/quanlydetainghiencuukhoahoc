app.controller('ContractController', ContractController);

function ContractController($scope, $http, $q) 
{
	$scope.getUnique = function (state, id = null) {
		switch (state) {
			case 'add':
				$http({
					method: 'GET',
					url: '/admin/contract/check?number=' + $scope.contract.smasodetai,
				}).then(function successCallback(response) {
					if (response.data != true) {
						$q.reject('exists');
					}
				}, function errorCallbacl(response) {

				});
			break;
		}
		
	}
}


app.directive('uniqueUsername', function($http) {
      return {
           restrict: 'A',
           require: 'ngModel',
           link: function (scope, element, attrs, ngModel) {
                element.bind('change', function (e) {
                     ngModel.$loading = true;

                     $http.get("/admin/contract/check?number=" + element.val()).success(function(data) {
                        ngModel.$loading = true;
                        ngModel.$setValidity('unique', data);
                     });
                });
           }
      };
});


