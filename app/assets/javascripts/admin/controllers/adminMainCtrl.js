mainCtrl = angular.module('AdminMainCtrl', []);

mainCtrl.controller('MainCtrl', ['$scope',
	function($scope) {
		$scope.pageName = 'Main';

    $scope.view = {
      getView: function(name){
        return "../templates/admin/" + name + ".html";
      }
    };
    $scope.getStatus = function (status) {
      switch(status){
        case 0:
          return "Available";
          break;
        case 1:
          return "On Hold";
          break;
        case 2:
          return "Sold";
          break;
        default:
          return "Unavailable";
          break;
      }
    };
	}]);
