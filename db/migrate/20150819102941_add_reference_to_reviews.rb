class AddReferenceToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :user, index:true, foreign_key:true
    add_reference :reviews, :car, index:true, foreign_key:true
    add_reference :reviews, :specification, index:true, foreign_key:true
  end
end
