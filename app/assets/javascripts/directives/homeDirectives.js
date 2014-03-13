homeDirectives = angular.module('HomeDirectives', []);

homeDirectives.directive("imglink", function() {
		return {
				restrict: 'E',
				scope: {},
				template: '<div class="col-md-4">' +
										'<div class="thumbnail">' +
											'<a href="#/{{ route }}">' +
												'<div class="caption">' +
													'<h4>{{ imageText }}</h4>' +
												'</div>' +
												'<img src="../img/{{ image }}.jpg" alt="..." />' +
											'</a></div></div>',
				link: function (scope, element, attrs) {
					scope.route = attrs.gRoute;
					scope.image = attrs.gImage;
					scope.imageText = attrs.gImageText;
				}
		}
});