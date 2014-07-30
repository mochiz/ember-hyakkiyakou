App.CreatureEditController = Ember.ObjectController.extend
  isEditing: false
  actions:
    saveChanges: ->
      @get('model').save().then =>
        @transitionToRoute 'creature'
    cancel: ->
      @get('model').rollback()
      @transitionToRoute 'creature'
