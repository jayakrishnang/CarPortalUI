class AddReferencesToTables < ActiveRecord::Migration
  def change
    add_reference :users, :role, index:true, foreign_key:true
    add_reference :cars, :body_type, index:true, foreign_key:true
    add_reference :cars, :brand, index:true, foreign_key:true
    add_reference :cars, :specification, index:true, foreign_key:true
    add_reference :specifications, :fuel_type, index:true, foreign_key:true
    add_reference :specifications, :transmission_type, index:true, foreign_key:true
    add_reference :bookings, :car, index:true, foreign_key:true
    add_reference :bookings, :user, index:true, foreign_key:true
    add_reference :bookings, :specification, index:true, foreign_key:true
    add_reference :deliveries, :specification, index:true, foreign_key:true
    add_reference :deliveries, :car, index:true, foreign_key:true
  end
end
