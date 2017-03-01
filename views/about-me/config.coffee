angular.module 'app.aboutMe', ['ngRoute']

.config ['$routeProvider', ($routeProvider) ->
    $routeProvider.when '/about-me', {
        templateUrl: 'views/about-me/index.html',
        controller: 'aboutMeCtrl'
    }
]

.controller 'aboutMeCtrl', ['$scope', ($scope) ->
    $scope.$on '$viewContentLoaded', ->
]