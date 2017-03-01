angular.module 'app', [
    'ngRoute',
    'ngAnimate',
    'ngSanitize',
    'angular-perfect-scrollbar-2',
    'app.frontPage',
    'app.projects',
    'app.project',
    'app.skills',
    'app.canDo',
    'app.copyright',
    'app.aboutMe',
    'app.contact'
]

.config ['$locationProvider', '$routeProvider', ($locationProvider, $routeProvider) ->
    $locationProvider.hashPrefix '!'
    $routeProvider.otherwise {redirectTo: '/'}
]

.factory 'viewStg', ($location) ->
    changeView: (view) ->
        $location.path view
    isActive: (viewLocation) ->
        viewLocation == $location.path()

.run ($rootScope, viewStg) ->
    $rootScope.view = viewStg
