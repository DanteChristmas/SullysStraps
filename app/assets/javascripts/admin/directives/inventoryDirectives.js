'use strict';

var inventoryDir = angular.module('InventoryDirectives', []);

  inventoryDir.directive('inventoryTable', [function() {
    return {
      restrict: 'EA',
      templateUrl: 'templates/admin/inventory_table.html',
      replace: true,
      scope: {
        products: '='
      },
      link: function(scope, element, attrs) {

        var _helper = {
          isNotUndefined: function(item){
            return typeof item !== 'undefined';
          }
        };


        var link = {
          init: function(){
            link.setScope();
          },

          setScope: function(){
            for(var property in link.scope){
              scope[property] = link.scope[property];
            }
          },

          scope: {
            clickedProduct: function(product) {
              scope.$emit('productClicked', product);
            }
          }
        };


        link.init();

      }
    };
  }
]);
