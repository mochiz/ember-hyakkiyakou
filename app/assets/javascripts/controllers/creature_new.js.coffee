App.CreaturesNewController = Ember.Controller.extend
  actions:
    createCreature: ->
      fields = @get('fields')
      if App.Creature.valid(fields)
        creature = @store.createRecord 'creature', fields
        creature.save().then =>
          @transitionToRoute 'creature', creature
      else
        @set 'showError', true
