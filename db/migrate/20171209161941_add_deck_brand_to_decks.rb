class AddDeckBrandToDecks < ActiveRecord::Migration[5.1]
  def change
    add_column :decks, :deck_brand, :string
    add_column :decks, :ready_for_play, :boolean, :default => false
  end
end
