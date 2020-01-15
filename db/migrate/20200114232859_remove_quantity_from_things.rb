class RemoveQuantityFromThings < ActiveRecord::Migration[5.2]
  def change
    remove_column :things, :quantity, :integer
  end
end
