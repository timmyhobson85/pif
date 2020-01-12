class RenameThingTypeToAct < ActiveRecord::Migration[5.2]
  def change
    rename_column :things, :type, :act
  end
end
