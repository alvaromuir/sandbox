# Chart axis generator

@app = window.app ? {}

define ['d3'], (d3) ->
  'use strict'

  (svg, margin) ->

    width   = svg[0][0].clientWidth
    height  = svg[0][0].clientHeight


    renderAxis = (svg) ->
      xAxis = d3.svg.axis()
              .scale(d3.scale.linear().range([0, quadrantWidth()]))
              .orient("bottom")

      yAxis = d3.svg.axis()
              .scale(d3.scale.linear().range([quadrantHeight(), 0]))
              .orient("left")

      svg.append("g").attr("class", "axis").attr("transform", ->
        "translate(" + xStart() + "," + yStart() + ")"
      ).call xAxis

      svg.append("g").attr("class", "axis").attr("transform", ->
        "translate(" + xStart() + "," + yEnd() + ")"
      ).call yAxis

      return


    xStart = ->
      margin

    yStart = ->
      height - margin

    xEnd = ->
      width - margin

    yEnd = ->
      margin

    quadrantWidth = ->
      width - 2 * margin

    quadrantHeight = ->
      height - 2 * margin

    renderAxis svg

