class ChangeActToIntegerInThings2 < ActiveRecord::Migration[5.2]
  def change
    rename_column :things, :actdel, :act
    change_column :things, :act, :integer
  end
end
