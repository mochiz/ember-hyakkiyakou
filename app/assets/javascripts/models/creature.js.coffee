App.Creature = DS.Model.extend
  name: DS.attr('string')
  kana: DS.attr('string')
  wiki_url: DS.attr('string')
  description: DS.attr('string')
  avatar: DS.attr('string')
  notes: DS.attr('string')
  fullName: (->
    @get('name') + '(' + @get('kana') + ')'
  ).property('name', 'kana')
