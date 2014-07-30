creatures = YAML.load_file(Rails.root.join('db', 'fixtures', 'hyakkiyakou.yml'))
creatures.each do |key, value|
  creature = Creature.find_or_create_by(name: value['name'], kana: value['kana'])
  creature.update(wiki_url: value['wiki_url'],
                  avatar: value['avatar'],
                  description: value['description'],
                  notes: value['notes'])
end
