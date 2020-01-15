class AddGeocodingFieldsToThings < ActiveRecord::Migration[5.2]
  def change
    add_column :things, :address, :text
    add_column :things, :latitude, :float
    add_column :things, :longitude, :float
  end
end
