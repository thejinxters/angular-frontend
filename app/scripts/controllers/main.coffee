'use strict'

###*
 # @ngdoc function
 # @name tuxedioFrontendApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the tuxedioFrontendApp
###
angular.module('tuxedioFrontendApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    $scope.handleLoginBtnClick = ()->
      $auth.submitLogin($scope.loginForm)
        .then ((resp) ->
          # Handle success response
          console.log("Submit successfull")
        ).catch (resp) ->
          # handle error response
          console.log("Submit Failed")
