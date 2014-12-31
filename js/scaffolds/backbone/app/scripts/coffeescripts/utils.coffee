# Some basic utils for the webapp

'use strict'
@app = window.app ? {}

define ['jquery'], ($) ->

  app.utils =
    echo: (ping) ->
      return ping