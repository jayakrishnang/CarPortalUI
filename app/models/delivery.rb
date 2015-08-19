class Delivery < ActiveRecord::Base
  belongs_to :car 
  belongs_to :specification
end
