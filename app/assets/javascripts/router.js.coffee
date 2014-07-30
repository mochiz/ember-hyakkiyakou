# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  @resource 'creatures', path: '/', ->
    @resource 'creature', path: '/creatures/:id', ->
      @route 'edit'

App.Router.reopen
  location: 'auto'
  rootURL: '/'

