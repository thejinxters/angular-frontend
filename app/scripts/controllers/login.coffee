'use strict'

###*
 # @ngdoc function
 # @name tuxedioFrontendApp.controller:LoginCtrl
 # @description
 # # LoginCtrl
 # Controller of the tuxedioFrontendApp
###
angular.module('tuxedioFrontendApp')
  .controller 'LoginCtrl', ($scope, $http, $window) ->
    $scope.message = ''
    $scope.submit = ->
      $http
        .post('http://localhost:3000/login.json', $scope.login)
        .success (data, status, headers, config) ->
          console.log(data)
          $window.sessionStorage.token = data.authentication_token;
          $scope.message = "Successfull Login"
        .error (data, status, headers, config) ->
          # Remove token if user fails to log in
          delete $window.sessionStorage.token;

          #Error Handling:
          $scope.message = 'Error: Invalid email or password'

