class CreateRideStations < ActiveRecord::Migration[6.0]
  def change
    create_table :ride_stations do |t|
      t.integer :station_id
      t.integer :ride_id

      t.timestamps
    end
  end
end
