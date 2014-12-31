# Socket.io stuff

'use strict'
@app = window.app ? {}

define ['socket.io'], (io) ->

  socket = io.connect "http://localhost:8124"
  socket.once "news", (data) ->
    console.log data
    console.log '@alvaromuir says, "The webapp is ready."'