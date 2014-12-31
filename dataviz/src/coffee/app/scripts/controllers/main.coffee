define ["angular"
        "controllers/yeoman"
        "controllers/dmp"
        ], (angular, yeoman, dmp) ->
  "use strict"

  angular.module 'datavizApp.controllers.MainCtrl', []
    .controller 'MainCtrl', ($scope) ->
      yeoman $scope

  angular.module 'datavizApp.controllers.DmpCtrl', []
    .controller 'DmpCtrl', ($scope, $http) ->
      dmp $scope, $http
