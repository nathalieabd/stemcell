class Stemcell.Routers.Pages extends Backbone.Router
  routes:
    '': 'index'

  index: ->
    view = new Stemcell.Views.PagesIndex()
    $('#container').html(view.render().el)