newCtrls = angular.module('NewStrapControllers', []);

newCtrls.controller('NewStrapsCtrl', ['$scope', '$routeParams',
  function($scope, $routeParams) {
    $scope.type = $routeParams.type;


  }
]);
