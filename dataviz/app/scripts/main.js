(function() {
  require.config({
    paths: {
      moment: "../bower_components/moment/moment",
      jquery: "../bower_components/jquery/dist/jquery",
      d3: "../bower_components/d3/d3",
      bootstrap: "../bower_components/bootstrap/dist/js/bootstrap",
      "angular-scenario": "../bower_components/angular-scenario/angular-scenario",
      "angular-sanitize": "../bower_components/angular-sanitize/angular-sanitize",
      "angular-route": "../bower_components/angular-route/angular-route",
      "angular-resource": "../bower_components/angular-resource/angular-resource",
      "angular-mocks": "../bower_components/angular-mocks/angular-mocks",
      "angular-cookies": "../bower_components/angular-cookies/angular-cookies",
      angular: "../bower_components/angular/angular"
    },
    shim: {
      angular: {
        exports: "angular"
      },
      "angular-route": [
        "angular"
      ],
      "angular-cookies": [
        "angular"
      ],
      "angular-sanitize": [
        "angular"
      ],
      "angular-resource": [
        "angular"
      ],
      "angular-mocks": {
        deps: [
          "angular"
        ],
        exports: "angular.mock"
      }
    },
    priority: [
      "angular"
    ]
  });

  window.name = "NG_DEFER_BOOTSTRAP!";

  require(["angular", "app", "angular-route", "angular-cookies", "angular-sanitize", "angular-resource"], function(angular, app, ngRoutes, ngCookies, ngSanitize, ngResource) {
    "use strict";
    var $html;
    $html = angular.element(document.getElementsByTagName("html")[0]);
    return angular.element().ready(function() {
      return angular.resumeBootstrap([app.name]);
    });
  });

}).call(this);
