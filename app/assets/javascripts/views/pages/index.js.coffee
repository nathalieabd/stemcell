class Stemcell.Views.PagesIndex extends Backbone.View

  template: JST['pages/index']

  initialize: ->
    @navbar = new Stemcell.Views.Navbar()

  render: ->
    $(@el).html(@template())
    $('#navbar').html(@navbar.render().el)
    this