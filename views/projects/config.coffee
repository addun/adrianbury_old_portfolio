angular.module 'app.projects', ['ngRoute']

.config ['$routeProvider', ($routeProvider) ->
    $routeProvider.when '/projects', {
        templateUrl: 'views/projects/index.html',
        controller: 'projectsCtrl' 
    }
]

.controller 'projectsCtrl', ['$scope', '$http', '$location', ($scope, $http, $location) ->
    $http {
        method: 'GET'
        url: 'data/index.php?projects'
    }
    .success (response)->
        $scope.projects = response

]