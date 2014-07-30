App.CreatureEditRoute = Ember.Route.extend
  activate:   -> @controllerFor('creature').set 'isEditing', true
  deactivate: -> @controllerFor('creature').set 'isEditing', false
