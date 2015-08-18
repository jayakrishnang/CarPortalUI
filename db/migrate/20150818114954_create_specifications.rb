class CreateSpecifications < ActiveRecord::Migration
  def change
    create_table :specifications do |t|
      t.string :version_name
      t.float :engine_power
      t.float :displacement
      t.float :mileage
      t.boolean :is_available
      t.boolean :air_bag
      t.boolean :abs
      t.string :color
      t.integer :seating_capacity
      t.boolean :air_conditioner
      t.boolean :central_lock
      t.boolean :power_window
      t.timestamps null: false
    end
  end
end
