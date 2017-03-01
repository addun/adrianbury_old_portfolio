angular.module 'app.canDo', ['ngRoute']

.config ['$routeProvider', ($routeProvider) ->
    $routeProvider.when '/can-do', {
        templateUrl: 'views/can-do/index.html',
        controller: 'canDoCtrl'
    }
]

.controller 'canDoCtrl', ['$scope', '$http', ($scope, $http) ->
    $http {
        method: 'GET'
        url: 'data/index.php?offers'
    }
    .success (response) ->
        $scope.offers = response
] 