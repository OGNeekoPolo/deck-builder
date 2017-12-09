class CreateDecks < ActiveRecord::Migration[5.1]
  def change
    create_table :decks do |t|
      t.string :title
      t.text :description
      t.boolean :play_ready

      t.timestamps
    end
  end
end
