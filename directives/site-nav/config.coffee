angular.module 'app'
 
.directive 'siteNav', ->
    {
        controller: 'siteNavCtrl'
        templateUrl: 'directives/site-nav/index.html'
        scope: {}
        link: (scope, element, attrs) ->
            $('#show-site-nav').on 'click', ->
                $('#main-site-nav').addClass('show')
            element.on 'click', ->
                $('#main-site-nav').removeClass('show')

    }
.controller 'siteNavCtrl', ['$scope', '$location', ($scope, $location) ->
    $scope.changeView = (view) ->
        $location.path view
    $scope.isActive = (viewLocation) ->
        viewLocation == $location.path()
]