(function() {
  var _ref;

  this.app = (_ref = window.app) != null ? _ref : {};

  require(['d3'], function(d3) {
    'use strict';
    var height, svg, width;
    app.d3 = d3;
    width = 1000;
    height = 400;
    svg = d3.select(".visualizations").append("svg");
    svg.attr("height", height).attr("width", width);
    svg.append("line").attr("x1", 0).attr("y1", 200).attr("x2", 100).attr("y2", 100).style("fill", "none").style("stroke", "black").style("stroke-width", 2);
    svg.append("circle").attr("cx", 200).attr("cy", 150).attr("r", 50).style("fill", "none").style("stroke", "black").style("stroke-width", 2);
    svg.append("rect").attr("x", 300).attr("y", 100).attr("width", 100).attr("height", 100).attr("rx", 5).style("fill", "none").style("stroke", "black").style("stroke-width", 2);
    svg.append("polygon").attr("points", "450, 200, 500, 100, 550, 200").style("fill", "none").style("stroke", "black").style("stroke-width", 2);
    svg.append("ellipse").attr("cx", 650).attr("cy", 150).attr("rx", 75).attr("ry", 50).style("fill", "none").style("stroke", "black").style("stroke-width", 2);
    return svg.append("polyline").attr("points", "750,160 780,130 810,190 840,140 870,210, 900, 100").style("fill", "none").style("stroke", "black").style("stroke-width", 2);
  });

}).call(this);
