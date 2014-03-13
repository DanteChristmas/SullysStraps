var productServices = angular.module('productServices', ['ngResource']);

productServices.factory('VintageStraps', ['$resource',
	function($resource){
		return $resource('../api/products/:id', {}, {
			query: {method:'GET', params:{id: 'vintage'}, isArray:true},
			get: {method: 'GET', isArray:true}
		});
	}]);