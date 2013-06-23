class Unit < ActiveRecord::Base
  attr_accessible :apartment_id, :bathrooms, :bedrooms, :price, :sqft
end
