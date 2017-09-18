class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.integer :year
      t.string :plate
      t.string :color
      t.references :vehicle_model, index: true

      t.timestamps
    end
  end
end
