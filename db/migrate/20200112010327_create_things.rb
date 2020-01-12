class CreateThings < ActiveRecord::Migration[5.2]
  def change
    create_table :things do |t|
      t.text :name
      t.string :type
      t.integer :quantity
      t.text :image

      t.timestamps
    end
  end
end
