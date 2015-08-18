class Car < ActiveRecord::Base
  belongs_to :body_type, :brand, :specification
  has_many :bookings, :deliveries
end
