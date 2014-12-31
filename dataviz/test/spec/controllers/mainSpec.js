(function() {
  define(["angular", "angular-mocks", "app"], function(angular, mocks, app) {
    "use strict";
    describe("Controller: MainCtrl", function() {
      var MainCtrl, scope;
      beforeEach(module("datavizApp.controllers.MainCtrl"));
      MainCtrl = void 0;
      scope = void 0;
      beforeEach(inject(function($controller, $rootScope) {
        scope = $rootScope.$new();
        MainCtrl = $controller("MainCtrl", {
          $scope: scope
        });
      }));
      it("should attach a list of awesomeThings to the scope", function() {
        expect(scope.awesomeThings.length).toBe(3);
      });
    });
  });

}).call(this);
