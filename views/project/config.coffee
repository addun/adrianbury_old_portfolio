angular.module 'app.project', ['ngRoute']

.config ['$routeProvider', ($routeProvider) ->
    $routeProvider.when '/projects/:id', {
        templateUrl: 'views/project/index.html',
        controller: 'projectCtrl'
    }
]

.controller 'projectCtrl', ['$scope', '$routeParams', '$http', '$location', ($scope, $routeParams, $http, $location) ->
    $http {
        method: 'GET'
        url: 'data/index.php?project=' + $routeParams.id
    }
    .success (response) ->
        $scope.selectedProject = response[0]

]