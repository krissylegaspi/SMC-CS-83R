class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.string :color
      t.integer :doors
      t.integer :seating
      t.string :engine

      t.timestamps
    end
  end
end
