#jshint unused: vars
define [ #deps
#invoke
  "angular"
  "controllers/main"
  "routes"
], (angular, MainCtrl, routes) ->
  "use strict"

  #angJSDeps
  ngApp = angular.module("datavizApp", [
    "datavizApp.controllers.MainCtrl"
    "datavizApp.controllers.DmpCtrl"
    "ngCookies"
    "ngResource"
    "ngSanitize"
    "ngRoute"
  ])

  # get routes
  routes ngApp
