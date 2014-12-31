# Angular main routes

define [''], () ->
  'use strict'

  (ngApp) ->
    ngApp.config ($routeProvider) ->
      $routeProvider
        .when "/",
          templateUrl: "views/main.html"
          controller: "MainCtrl"
        .when "/dmp",
          templateUrl: "views/dmp.html"
          controller: "DmpCtrl"
        .when "/charts",
          template: "charts"
          # controller: "DmpCtrl"
        .otherwise redirectTo: "/"
