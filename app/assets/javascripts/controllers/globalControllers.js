globalCtrls = angular.module('GlobalCtrls', []);
globalCtrls.controller('RootCtrl', ['$scope', '$rootScope',
	function($scope){
		$scope.view = {
			getView: function(name){
				return "../templates/global/" + name + ".html";
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
	}
]);
