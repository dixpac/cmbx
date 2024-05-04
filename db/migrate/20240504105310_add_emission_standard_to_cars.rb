class AddEmissionStandardToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :emission_standard, :string
  end
end
