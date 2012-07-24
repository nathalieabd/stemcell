class Stemcell.Routers.Pages extends Backbone.Router
  routes:
    '': 'index'

  initialize: ->
    @current_user = new Stemcell.Models.CurrentUser()
    @current_user.fetch()

  index: ->
    view = new Stemcell.Views.PagesIndex()
    $('#container').html(view.render().el)