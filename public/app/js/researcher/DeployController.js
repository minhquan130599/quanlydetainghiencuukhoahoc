app.controller('DeployController', DeployController);
function DeployController($scope, $http, $log)
{
	topicID = getLastSegment(window.location.href);

	$http({
		method: 'GET',
		url: '/researcher/deploy/resource?id=' + topicID
	}).then(function successCallback(response) {
		// Có dữ liệu trả về
    $scope.topic                      = response.data.topic ? response.data.topic : false;
    $scope.member                     = response.data.member ? response.data.member : false;
    $scope.contract                   = response.data.contract ? response.data.contract : false;
    $scope.expertise                  = response.data.expertise ? response.data.expertise : false;
    $scope.survey                     = response.data.survey ? response.data.survey : false;
    $scope.acceptance                 = response.data.acceptance ? response.data.acceptance : false;
    $scope.liquidation                = response.data.liquidation ? response.data.liquidation : false;
    $scope.liquidation_member_council = response.data.liquidation_member_council ? response.data.liquidation_member_council : false;
    $scope.expertise_member_council   = response.data.expertise_member_council ? response.data.expertise_member_council : false;
    $scope.survey_member_council      = response.data.survey_member_council ? response.data.survey_member_council : false;
    $scope.acceptance_member_council  = response.data.acceptance_member_council ? response.data.acceptance_member_council : false;
    $scope.certify                    = response.data.certify ? response.data.certify : false;
	}, function errorCallback(response) {
		// Không có dữ liệu trả về
		$log.error.logs;
	});
}

app.directive('customPopover', function () {
    return {
        restrict: 'A',
        template: '<span>{{label}}</span>',
        link: function (scope, el, attrs) {
            scope.label = attrs.popoverLabel;
            $(el).popover({
                trigger: 'hover',
                html: true,
                content: attrs.popoverHtml,
                placement: attrs.popoverPlacement
            });
        }
    };
});


function getLastSegment(url) {
	let lastSegmentPosition = url.lastIndexOf('/');
	return url.substr(lastSegmentPosition + 1);
}

$(document).ready(function() {
  	url = window.location.href;
  	if (getParameterByName('tab')) {
  		var data = getParameterByName('tab');
  		var hash = '#tab_' + data;
  		$('#myTab a[href="' + hash + '"]').tab('show');
  	}
});