class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :title
      t.text :description
      t.string :element
      t.string :type
      t.string :rarity
      t.boolean :extra_deck

      t.timestamps
    end
  end
end
