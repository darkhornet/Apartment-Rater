class Apartment < ActiveRecord::Base
  has_many :units

  attr_accessible :address, :address2, :city, :name, :state, :zip
end
