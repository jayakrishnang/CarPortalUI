class Car < ActiveRecord::Base
  belongs_to :body_type
  belongs_to :brand
  belongs_to :specification
  has_many :bookings 
  has_many :deliveries
  has_many :reviews
end
