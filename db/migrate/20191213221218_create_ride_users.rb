class CreateRideUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :ride_users do |t|
      t.integer :user_id
      t.integer :ride_id

      t.timestamps
    end
  end
end
