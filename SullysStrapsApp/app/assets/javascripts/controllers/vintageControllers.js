vintageCtrl = angular.module('VintageControllers', []);

vintageCtrl.controller('VintageListingCtrl', ['$scope', 'VintageStraps',
	function($scope, Straps) {
		$scope.straps = Straps.query();
		$scope.orderProp = "id";
		
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
		}
	}
]);

vintageCtrl.controller('VintageDetailCtrl', ['$scope', '$routeParams', 'VintageStraps',
	function($scope, $routeParams, Strap) {
		$scope.strap = Strap.get({strapId: $routeParams.id}, function(strap) {
			//do promise stuff here
		});
	}
]);