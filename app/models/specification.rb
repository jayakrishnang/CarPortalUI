class Specification < ActiveRecord::Base
  has_many :cars
  has_many :bookings
  has_many :deliveries
  belongs_to :fuel_type
  belongs_to :transmission_type
end
