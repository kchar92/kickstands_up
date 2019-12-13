class CreateRides < ActiveRecord::Migration[6.0]
  def change
    create_table :rides do |t|
      t.string :name
      t.datetime :date_time
      t.string :starting_point
      t.float :starting_point_lat
      t.float :starting_point_long
      t.string :end_point
      t.float :end_point_lat
      t.float :end_point_long
      t.float :ride_distance
      t.string :bike_type

      t.timestamps
    end
  end
end
