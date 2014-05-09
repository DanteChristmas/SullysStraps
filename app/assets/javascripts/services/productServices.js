var appServices = angular.module('productServices', ['ngResource']);

appServices.factory('VintageStraps', ['$resource',
	function($resource){
		return $resource('../api/products/:id', {}, {
			query: {method:'GET', params:{id: 'vintage'}, isArray:true},
			get: {method: 'GET', isArray:true}
		});
	}]);

appServices.factory('Testimonials', ['$resource',
	function ($resource){
		return $resource('../api/testimonials/:id', {}, {});
}]);
