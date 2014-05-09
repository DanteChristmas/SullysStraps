'use strict';

angular.module('angularTableApp', [
  'ngRoute', 'angular-table'
])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {templateUrl: 'views/main.html'})
      .otherwise({
        redirectTo: '/'
      });
  });
