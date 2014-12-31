(function() {
  define(["angular", "controllers/yeoman", "controllers/dmp"], function(angular, yeoman, dmp) {
    "use strict";
    angular.module('datavizApp.controllers.MainCtrl', []).controller('MainCtrl', function($scope) {
      return yeoman($scope);
    });
    return angular.module('datavizApp.controllers.DmpCtrl', []).controller('DmpCtrl', function($scope, $http) {
      return dmp($scope, $http);
    });
  });

}).call(this);
