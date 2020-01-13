class ChangeActToIntegerInThings2 < ActiveRecord::Migration[5.2]
  def change
    change_column :things, :act, :integer
  end
end
