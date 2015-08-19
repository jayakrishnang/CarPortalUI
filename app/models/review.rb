class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :car
  belongs_to :specification
end
