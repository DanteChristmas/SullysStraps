testimonialCtrl = angular.module('InventoryCtrls', []);

testimonialCtrl.controller('InventoryCtrl', ['$scope', 'Inventory',
  function($scope, Inventory) {
    $scope.inventory = Inventory.query();
    $scope.orderProp = "id";

  }
]);
