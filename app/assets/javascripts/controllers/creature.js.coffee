App.CreatureController = Ember.ObjectController.extend
  actions:
    delete: ->
      @get('model').destroyRecord().then =>
        @transitionToRoute 'creatures'
