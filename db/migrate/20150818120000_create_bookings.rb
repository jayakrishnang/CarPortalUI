class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :status
      t.string :message
      t.timestamps null: false
    end
  end
end
