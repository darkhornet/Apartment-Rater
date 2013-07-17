class Apartment < ActiveRecord::Base
  has_many :units
end
