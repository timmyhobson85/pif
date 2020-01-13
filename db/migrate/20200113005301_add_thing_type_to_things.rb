class AddThingTypeToThings < ActiveRecord::Migration[5.2]
  def change
    add_column :things, :thing_type, :integer
  end
end
