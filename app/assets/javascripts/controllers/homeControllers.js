homeCtrl = angular.module('HomeControllers', []);

homeCtrl.controller('HomeCtrl', ['$scope',
	function($scope) {
		$scope.pageName = 'Home';
	}]);

