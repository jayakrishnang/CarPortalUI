class Booking < ActiveRecord::Base
  belongs_to :car 
  belongs_to :user
  belongs_to :specification
end
