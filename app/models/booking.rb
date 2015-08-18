class Booking < ActiveRecord::Base
  belongs_to :car, :user, :specification
end
