class CreatureSerializer < ActiveModel::Serializer
  attributes :id, :name, :kana, :wiki_url, :description, :avatar, :notes
end
