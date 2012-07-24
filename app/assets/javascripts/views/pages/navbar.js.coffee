class Stemcell.Views.Navbar extends Backbone.View

  template: JST['pages/navbar']

  initialize: ->
    @current_user = new Stemcell.Models.CurrentUser()
    @current_user.on('change', this.render, this)
    @current_user.fetch()

  render: ->
    $(@el).html(@template(current_user : @current_user))
    this