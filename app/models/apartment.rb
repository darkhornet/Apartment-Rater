class Apartment < ActiveRecord::Base
  attr_accessible :address, :address2, :city, :name, :state, :zip
end
