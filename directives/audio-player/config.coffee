angular.module 'app'

.directive 'audioPlayer', ->
    {
        controller: 'audioPlayerCtrl'
        templateUrl: 'directives/audio-player/index.html'
        scope: {}
        link: (scope, element, attrs) ->
            if Modernizr.audio
                $.initAudioPlayer() 
            else
                $('#audio-next, #audio-play').remove()


    }
.controller 'audioPlayerCtrl', ['$scope', '$location', ($scope, $location) ->
    $scope.changeView = (view) ->
        $location.path view
]