App.CreaturesRoute = Ember.Route.extend
  model: -> @store.find('creature')
