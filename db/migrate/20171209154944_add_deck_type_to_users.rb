class AddDeckTypeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :deck_type, :string
  end
end
