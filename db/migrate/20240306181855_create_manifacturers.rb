class CreateManifacturers < ActiveRecord::Migration[7.1]
  def change
    create_table :manifacturers do |t|
      t.string :name

      t.timestamps
    end
  end
end
