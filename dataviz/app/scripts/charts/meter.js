(function() {
  var _ref;

  this.app = (_ref = window.app) != null ? _ref : {};

  require(['d3'], function(d3) {
    'use strict';
    return app.d3 = d3;
  });

}).call(this);
