angular.module 'app.contact', ['ngRoute']

.config ['$routeProvider', ($routeProvider) ->
    $routeProvider.when '/contact', {
        templateUrl: 'views/contact/index.html',
        controller: 'contactCtrl'
    }
]

.controller 'contactCtrl', ['$scope', '$http', ($scope, $http) ->
    $scope.sendEmail = ->
        if !$scope.emailForm.$valid
            $('#error').fadeIn()
            return
        else
            $http {
                method: 'POST'
                url: 'data/index.php?sendEmail'
                data: JSON.stringify $scope.contact
            }
            .success (response) ->
                if response.valid == "true" and response.send == "true"
                    $('#error').remove()
                    $('#emailForm').fadeOut(500, ->
                        $('#emailForm').remove()
                        $('#success').fadeIn()
                        $scope.contact = {}
                        return
                    )
            .error ->
                alert 'Brak połączenia z serwerem - proszę spróbować jeszcze raz'
                return
            return

]
