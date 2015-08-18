class Delivery < ActiveRecord::Base
  belongs_to :car, :specification;
end
