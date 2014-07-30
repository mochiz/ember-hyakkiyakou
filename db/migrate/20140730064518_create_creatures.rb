class CreateCreatures < ActiveRecord::Migration
  def change
    create_table :creatures do |t|
      t.string :name
      t.string :kana
      t.string :wiki_url
      t.text :description
      t.string :avatar
      t.text :notes
    end
  end
end
