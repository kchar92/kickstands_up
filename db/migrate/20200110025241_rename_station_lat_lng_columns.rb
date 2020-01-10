class RenameStationLatLngColumns < ActiveRecord::Migration[6.0]
  def change
    rename_column :stations, :latitude, :lat
    rename_column :stations, :longitude, :lng
  end
end
