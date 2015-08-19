class Car < ActiveRecord::Base
  belongs_to :body_type
  belongs_to :brand
  belongs_to :specification
  has_many :bookings 
  has_many :deliveries

  RailsAdmin.config do |config|
  config.model 'Car' do
    list do
      
      field :created_at
    end
  end
end
end
