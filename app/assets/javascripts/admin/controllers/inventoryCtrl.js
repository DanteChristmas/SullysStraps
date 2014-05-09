inventoryCtrl = angular.module('InventoryCtrls', []);

inventoryCtrl.controller('InventoryCtrl', ['$scope', 'Inventory',
  function($scope, Inventory) {
    $scope.inventory = Inventory.query();
    $scope.orderProp = "id";

  }
]);
