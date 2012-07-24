window.Stemcell =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Stemcell.Routers.Pages()
    Backbone.history.start()

$(document).ready ->
  Stemcell.init()