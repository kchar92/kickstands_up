class AddCreatorToRidesTable < ActiveRecord::Migration[6.0]
  def change
    add_column :rides, :creator, :integer
  end
end
