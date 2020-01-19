class ChangeCreatorToString < ActiveRecord::Migration[6.0]
  def change
    change_column :rides, :creator, :string
  end
end
