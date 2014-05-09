
var strapsAdminApp = angular.module('sullysStrapsAdmin', [
		'ngRoute',
		'ngResource',
		'angular-table',

		'AdminMainCtrl',
		'InventoryCtrls',

		'GlobalDirectives',

		'InventoryServices'
	]);

strapsAdminApp.config(['$routeProvider',
	function($routeProvider) {
		$routeProvider.
			when('/admin', {
				templateUrl: '/templates/admin/main.html',
				controller: 'MainCtrl'
			}).
			when('/inventory', {
				templateUrl: '/templates/admin/inventory.html',
				controller: 'InventoryCtrl'
			}).
			when('/ledger', {
				templateUrl: '/templates/admin/inventory.html',
				controller: 'LedgerCtrl'
			}).
			when('/display', {
				templateUrl: '/templates/admin/display.html',
				controller: 'DisplayCtrl'
			}).
			otherwise({
				redirectTo: '/admin'
			});
	}]);
