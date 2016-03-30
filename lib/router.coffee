Router.configure
  onBeforeAction: ->
    unless Meteor.userId()
      Router.go 'landing'
    @next()

Router.route '/', ->
  @render 'landing'
# Router.route '/',
#   name: 'landing'
#   @render 'landing'
  # yieldTemplates: drawersModals: to: 'modals'
