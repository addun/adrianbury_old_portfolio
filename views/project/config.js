// Generated by CoffeeScript 1.10.0
(function() {
  angular.module('app.project', ['ngRoute']).config([
    '$routeProvider', function($routeProvider) {
      return $routeProvider.when('/projects/:id', {
        templateUrl: 'views/project/index.html',
        controller: 'projectCtrl'
      });
    }
  ]).controller('projectCtrl', [
    '$scope', '$routeParams', '$http', '$location', function($scope, $routeParams, $http, $location) {
      return $http({
        method: 'GET',
        url: 'data/index.php?project=' + $routeParams.id
      }).success(function(response) {
        return $scope.selectedProject = response[0];
      });
    }
  ]);

}).call(this);

//# sourceMappingURL=config.js.map
