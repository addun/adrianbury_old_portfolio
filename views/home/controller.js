angular
    .module('app.home', ['ngRoute']).config([
    '$routeProvider', function ($routeProvider) {
        return $routeProvider.when('/', {
            template: require('./index.html'),
            controller: 'homeCtrl'
        });
    }
])
    .controller('homeCtrl', [
        '$scope', function ($scope) {
            $scope.$on('$viewContentLoaded', function () {

            });
        }
    ]);