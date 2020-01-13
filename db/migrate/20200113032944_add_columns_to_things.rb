class AddColumnsToThings < ActiveRecord::Migration[5.2]
  def change
    add_column :things, :location, :string
    add_column :things, :condition, :integer
    add_column :things, :urgency, :integer
    add_column :things, :description, :text
  end
end
