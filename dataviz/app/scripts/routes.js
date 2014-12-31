(function() {
  define([''], function() {
    'use strict';
    return function(ngApp) {
      return ngApp.config(function($routeProvider) {
        return $routeProvider.when("/", {
          templateUrl: "views/main.html",
          controller: "MainCtrl"
        }).when("/dmp", {
          templateUrl: "views/dmp.html",
          controller: "DmpCtrl"
        }).when("/charts", {
          template: "charts"
        }).otherwise({
          redirectTo: "/"
        });
      });
    };
  });

}).call(this);
