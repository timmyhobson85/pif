class ChangeActInThingsToActdel < ActiveRecord::Migration[5.2]
  def change
    rename_column :things, :act, :actdel
  end
end
