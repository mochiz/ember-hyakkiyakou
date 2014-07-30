# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  @resource 'creatures', path: '/', ->
    @route 'new', path: '/creatures/new'
    @resource 'creature', path: '/creatures/:id', ->
      @route 'edit'

App.Router.reopen
  location: 'auto'
  rootURL: '/'

