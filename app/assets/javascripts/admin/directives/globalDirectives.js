globalDirectives = angular.module('GlobalDirectives', []);

globalDirectives.directive('gNavMenu',['$location',
function($location) {
  return function(scope, element, attrs) {
    var links = element.find('a'),
        onClass = attrs.gNavMenu || 'on',
        routePattern,
        link,
        url,
        currentLink,
        urlMap = {},
        i;
    var updateNav = function () {
      var pathLink = urlMap[$location.path()];

      if (pathLink) {
        if (currentLink) {
          currentLink.removeClass(onClass);
        }
        currentLink = pathLink;
        currentLink.addClass(onClass);
      }
    };
    if (!$location.$$html5) {
      routePattern = /^#[^/]*/;
    }

    for (i = 0; i < links.length; i++) {
      link = angular.element(links[i]);
      url = link.attr('href');

      if ($location.$$html5) {
        urlMap[url] = link;
      } else {
        urlMap[url.replace(routePattern, '')] = link;
      }
    }

    scope.$on('$routeChangeStart', function() {
      updateNav();
    });
    updateNav();
  };
}]);
