globalCtrls = angular.module('GlobalCtrls', []);
globalCtrls.controller('RootCtrl', ['$scope',
	function($scope){
		$scope.view = {
			getView: function(name){
				return "../templates/global/" + name + ".html";
			} 
		}
	}
]);
