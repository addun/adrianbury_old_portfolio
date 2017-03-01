// Generated by CoffeeScript 1.10.0
(function() {
  angular.module('app.projects', ['ngRoute']).config([
    '$routeProvider', function($routeProvider) {
      return $routeProvider.when('/projects', {
        templateUrl: 'views/projects/index.html',
        controller: 'projectsCtrl'
      });
    }
  ]).controller('projectsCtrl', [
    '$scope', '$http', '$location', function($scope, $http, $location) {
      return $http({
        method: 'GET',
        url: 'data/index.php?projects'
      }).success(function(response) {
        return $scope.projects = response;
      });
    }
  ]);

}).call(this);

//# sourceMappingURL=config.js.map
