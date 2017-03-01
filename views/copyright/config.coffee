angular.module 'app.copyright', ['ngRoute']

.config ['$routeProvider', ($routeProvider) ->
    $routeProvider.when '/copyright', {
        templateUrl: 'views/copyright/index.html',
        controller: 'copyrightCtrl'
    }
] 

.controller 'copyrightCtrl', ['$scope', ($scope) ->
    $scope.currentYear = new Date().getFullYear()
]