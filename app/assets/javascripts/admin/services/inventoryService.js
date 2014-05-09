var appServices = angular.module('InventoryServices', ['ngResource']);

appServices.factory('Inventory', ['$resource',
  function($resource){
    return $resource('../api/inventory/:id', {}, {});
  }]);
