class AddPowerTypeToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :power_type, :integer
  end
end
