vintageCtrl = angular.module('VintageControllers', []);

vintageCtrl.controller('VintageListingCtrl', ['$scope', 'VintageStraps',
	function($scope, Straps) {
		$scope.straps = Straps.query();
		$scope.orderProp = "id";
		
		
	}
]);

vintageCtrl.controller('VintageDetailsCtrl', ['$scope', '$routeParams', 'VintageStraps',
	function($scope, $routeParams, Strap) {
		Strap.get({id:$routeParams.id}, function(strap) {
				$scope.strap = strap[0];
		});
	}
]);