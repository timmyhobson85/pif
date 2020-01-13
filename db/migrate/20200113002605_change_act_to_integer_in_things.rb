class ChangeActToIntegerInThings < ActiveRecord::Migration[5.2]
  def change
    rename_column :things, :act, :act_del
    add_column :things, :act, :integer
    remove_column :things, :act_del
  end
end
