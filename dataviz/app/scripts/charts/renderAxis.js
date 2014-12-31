(function() {
  var _ref;

  this.app = (_ref = window.app) != null ? _ref : {};

  define(['d3'], function(d3) {
    'use strict';
    return function(svg, margin) {
      var height, quadrantHeight, quadrantWidth, renderAxis, width, xEnd, xStart, yEnd, yStart;
      width = svg[0][0].clientWidth;
      height = svg[0][0].clientHeight;
      renderAxis = function(svg) {
        var xAxis, yAxis;
        xAxis = d3.svg.axis().scale(d3.scale.linear().range([0, quadrantWidth()])).orient("bottom");
        yAxis = d3.svg.axis().scale(d3.scale.linear().range([quadrantHeight(), 0])).orient("left");
        svg.append("g").attr("class", "axis").attr("transform", function() {
          return "translate(" + xStart() + "," + yStart() + ")";
        }).call(xAxis);
        svg.append("g").attr("class", "axis").attr("transform", function() {
          return "translate(" + xStart() + "," + yEnd() + ")";
        }).call(yAxis);
      };
      xStart = function() {
        return margin;
      };
      yStart = function() {
        return height - margin;
      };
      xEnd = function() {
        return width - margin;
      };
      yEnd = function() {
        return margin;
      };
      quadrantWidth = function() {
        return width - 2 * margin;
      };
      quadrantHeight = function() {
        return height - 2 * margin;
      };
      return renderAxis(svg);
    };
  });

}).call(this);
