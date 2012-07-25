class Stemcell.Views.Navbar extends Backbone.View

  template: JST['pages/navbar']

  initialize: (current_user) ->
    console.log("got a current user!!:")
    console.log(current_user)
    @current_user = current_user
    @current_user.on('change', this.render, this)

  render: ->
    $(@el).html(@template({user_name : @current_user.name}))
    this