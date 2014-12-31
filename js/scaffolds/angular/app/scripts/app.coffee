'use strict';

angular.module('yoangularApp', [])
  .config ($routeProvider) ->
    $routeProvider
      .when '/', 
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .otherwise
        redirectTo: '/'