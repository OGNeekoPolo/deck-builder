class RemovePlayReadyFromDecks < ActiveRecord::Migration[5.1]
  def change
    remove_column :decks, :play_ready, :boolean
  end
end
