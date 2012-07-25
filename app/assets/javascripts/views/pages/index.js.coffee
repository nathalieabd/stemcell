class Stemcell.Views.PagesIndex extends Backbone.View

  template: JST['pages/index']

  initialize: (current_user) ->
    @current_user = current_user
    @current_user.on('change', this.render, this)

  render: ->
    console.log('current user name' )
    console.log(@current_user)
    $(@el).html(@template({user_name: @current_user.attributes['name']}))
    this