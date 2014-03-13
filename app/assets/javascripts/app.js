
var strapsMainApp = angular.module('sullysStrapsMain', [
		'ngRoute',
		'HomeControllers',
		'VintageControllers',
		'GlobalCtrls',
		'GlobalDirectives',
		'HomeDirectives',
		'productServices',
		'globalAnimations',
		'TestimonialControllers'
		

		/*'phonecatControllers',
		'phonecatFilters',
		'phonecatServices'*/
	]);
var globalAnimations = angular.module('globalAnimations', ['ngAnimate']);	

strapsMainApp.config(['$routeProvider',
	function($routeProvider) {
		$routeProvider.
			when('/home', {
				templateUrl: '../templates/home/home.html',
				controller: 'HomeCtrl'
			}).
			when('/vintage', {
				templateUrl: '../templates/vintage/listings.html',
				controller: 'VintageListingCtrl'
			}).
			when('/vintage/:id', {
				templateUrl: '../templates/vintage/details.html',
				controller: 'VintageDetailsCtrl'
			}).
			when('/testimonials', {
				templateUrl: '../templates/testimonials/testimonials.html',
				controller: 'TestimonialListingCtrl'
			}).
			otherwise({
				redirectTo: '/home'
			});
	}]);