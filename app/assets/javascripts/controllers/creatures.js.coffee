App.CreaturesController = Ember.ArrayController.extend
  sortProperties: ['kana', 'name']
  creatures: ( ->
    if @get('search') then @get('searchedCreatures') else @
  ).property('search', 'searchedCreatures')

  searchedCreatures: ( ->
    search = @get('search').toLowerCase()
    @filter (creature) => creature.get('fullName').toLowerCase().indexOf(search) != -1
  ).property('search', '@each.fullName')
