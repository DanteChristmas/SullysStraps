
var strapsMainApp = angular.module('sullysStrapsMain', [
		'ngRoute',
		'HomeControllers',
		'GlobalCtrls'

		/*'phonecatControllers',
		'phonecatFilters',
		'phonecatServices'*/
	]);
	

strapsMainApp.config(['$routeProvider',
	function($routeProvider) {
		$routeProvider.
			when('/home', {
				templateUrl: 'templates/home/home.html',
				controller: 'HomeCtrl'
			}).
			/*when('/phones/:phoneId', {
				templateUrl: 'partials/phone-detail.html',
				controller: 'PhoneDetailCtrl'
			}).*/
			otherwise({
				redirectTo: '/home'
			});
	}]);
