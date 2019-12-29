class AddStateToStations < ActiveRecord::Migration[6.0]
  def change
    add_column :stations, :state, :string
  end
end
