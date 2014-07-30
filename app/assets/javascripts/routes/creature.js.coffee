App.CreatureRoute = Ember.Route.extend
  model: (params) -> @store.find 'creature', params.id
