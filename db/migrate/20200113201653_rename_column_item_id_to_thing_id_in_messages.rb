class RenameColumnItemIdToThingIdInMessages < ActiveRecord::Migration[5.2]
  def change
    rename_column :messages, :item_id, :thing_id
  end
end
