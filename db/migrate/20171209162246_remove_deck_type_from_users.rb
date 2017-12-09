class RemoveDeckTypeFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :deck_type, :string
  end
end
