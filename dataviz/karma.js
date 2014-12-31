(function() {
  module.exports = function(config) {
    config.set({
      basePath: "",
      frameworks: ["jasmine", "requirejs"],
      files: [
        {
          pattern: "app/bower_components/angular/angular.js",
          included: false
        }, {
          pattern: "app/bower_components/angular-mocks/angular-mocks.js",
          included: false
        }, {
          pattern: "app/bower_components/angular-resource/angular-resource.js",
          included: false
        }, {
          pattern: "app/bower_components/angular-cookies/angular-cookies.js",
          included: false
        }, {
          pattern: "app/bower_components/angular-sanitize/angular-sanitize.js",
          included: false
        }, {
          pattern: "app/bower_components/angular-route/angular-route.js",
          included: false
        }, {
          pattern: "app/scripts/*.js",
          included: false
        }, {
          pattern: "app/scripts/**/*.js",
          included: false
        }, {
          pattern: "test/spec/**/*.js",
          included: false
        }, "test/test-main.js"
      ],
      exclude: ["app/scripts/main.js"],
      port: 8080,
      logLevel: config.LOG_INFO,
      autoWatch: false,
      browsers: ["PhantomJS"],
      singleRun: false
    });
  };

}).call(this);
