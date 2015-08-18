class Specification < ActiveRecord::Base
  has_many :cars, :bookings, :deliveries
  belongs_to :fuel_type, :transmission_type
end
