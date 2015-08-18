class AddFieldsToUsers < ActiveRecord::Migration
  def change
    change_table(:users) do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.text :address
      t.integer :zipcode
      t.boolean :is_active
    end
  end
end
