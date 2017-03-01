angular.module 'app.skills', ['ngRoute']

.config ['$routeProvider', ($routeProvider) ->
    $routeProvider.when '/skills', {
        templateUrl: 'views/skills/index.html',
        controller: 'skillsCtrl'
    }
]

.controller 'skillsCtrl', ['$scope', '$http', ($scope, $http) ->
    $http {
        url: 'data/index.php?skill-lists' 
    }
    .success (response) ->
        $scope.skillsList = response

    $http {
        url: 'data/index.php?skill-icons'
    }
    .success (response) ->
        $scope.skillsIcons = response
]