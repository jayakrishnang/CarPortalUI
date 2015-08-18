class AddPriceToSpecifications < ActiveRecord::Migration
  def change
  	add_column :specifications, :price, :float
  end
end
