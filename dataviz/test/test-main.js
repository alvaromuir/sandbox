(function() {
  var file, tests;

  tests = [];

  for (file in window.__karma__.files) {
    if (window.__karma__.files.hasOwnProperty(file)) {
      if (/Spec\.js$/.test(file)) {
        tests.push(file);
      }
    }
  }

  requirejs.config({
    baseUrl: "/base/app/scripts",
    paths: {},
    shim: {
      angular: {
        exports: "angular"
      },
      "angular-route": ["angular"],
      "angular-cookies": ["angular"],
      "angular-sanitize": ["angular"],
      "angular-resource": ["angular"],
      "angular-mocks": {
        deps: ["angular"],
        exports: "angular.mock"
      }
    },
    deps: tests,
    callback: window.__karma__.start
  });

}).call(this);
