// Generated by CoffeeScript 1.10.0
(function() {
  angular.module('app').directive('audioPlayer', function() {
    return {
      controller: 'audioPlayerCtrl',
      templateUrl: 'directives/audio-player/index.html',
      scope: {},
      link: function(scope, element, attrs) {
        if (Modernizr.audio) {
          return $.initAudioPlayer();
        } else {
          return $('#audio-next, #audio-play').remove();
        }
      }
    };
  }).controller('audioPlayerCtrl', [
    '$scope', '$location', function($scope, $location) {
      return $scope.changeView = function(view) {
        return $location.path(view);
      };
    }
  ]);

}).call(this);

//# sourceMappingURL=config.js.map