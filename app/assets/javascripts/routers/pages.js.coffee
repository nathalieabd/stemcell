class Stemcell.Routers.Pages extends Backbone.Router
  routes:
    '': 'index'

  initialize: ->
    @current_user = new Stemcell.Models.CurrentUser()
    @current_user.fetch()

  index: ->
    @index = new Stemcell.Views.PagesIndex(@current_user)
    @navbar = new Stemcell.Views.Navbar(@current_user)

    $('#container').html(@index.render().el)
    $('#navbar').html(@navbar.render().el)