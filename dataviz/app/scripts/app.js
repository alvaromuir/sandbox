(function() {
  define(["angular", "controllers/main", "routes"], function(angular, MainCtrl, routes) {
    "use strict";
    var ngApp;
    ngApp = angular.module("datavizApp", ["datavizApp.controllers.MainCtrl", "datavizApp.controllers.DmpCtrl", "ngCookies", "ngResource", "ngSanitize", "ngRoute"]);
    return routes(ngApp);
  });

}).call(this);
