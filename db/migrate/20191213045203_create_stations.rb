class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.float :latitude
      t.float :longitude
      t.string :brand
      t.string :octane
      t.string :phone_number

      t.timestamps
    end
  end
end
