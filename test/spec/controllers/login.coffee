'use strict'

describe 'Controller: LoginCtrl', ->

  # load the controller's module
  beforeEach module 'tuxedioFrontendApp'

  LoginCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    LoginCtrl = $controller 'LoginCtrl', {
      $scope: scope
    }
