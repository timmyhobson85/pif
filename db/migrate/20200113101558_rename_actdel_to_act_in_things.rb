class RenameActdelToActInThings < ActiveRecord::Migration[5.2]
  def change
    rename_column :things, :actdel, :act
  end
end
