class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.belongs_to :manifacturer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
