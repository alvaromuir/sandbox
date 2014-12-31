(function() {
  var _ref;

  this.app = (_ref = window.app) != null ? _ref : {};

  require(['d3', 'charts/renderAxis'], function(d3, renderAxis) {
    'use strict';
    var data, height, line, margin, svg, width, x, y;
    app.d3 = d3;
    width = 500;
    height = 500;
    margin = 50;
    x = d3.scale.linear().domain([0, 10]).range([margin, width - margin]);
    y = d3.scale.linear().domain([0, 10]).range([height - margin, margin]);
    data = [
      [
        {
          x: 0,
          y: 5
        }, {
          x: 1,
          y: 9
        }, {
          x: 2,
          y: 7
        }, {
          x: 3,
          y: 5
        }, {
          x: 4,
          y: 3
        }, {
          x: 6,
          y: 4
        }, {
          x: 7,
          y: 2
        }, {
          x: 8,
          y: 3
        }, {
          x: 9,
          y: 2
        }
      ], d3.range(10).map(function(i) {
        return {
          x: i,
          y: Math.sin(i) + 5
        };
      })
    ];
    line = d3.svg.line().x(function(d) {
      return x(d.x);
    }).y(function(d) {
      return y(d.y);
    });
    svg = d3.select(".visualizations").append("svg");
    svg.attr("height", height).attr("width", width);
    svg.selectAll("path.line").data(data).enter().append("path").attr("class", "line").attr("d", function(d) {
      return line(d);
    });
    return renderAxis(svg, margin);
  });

}).call(this);
