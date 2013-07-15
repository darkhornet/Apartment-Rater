class Unit < ActiveRecord::Base
  belongs_to :apartment

  attr_accessible :apartment_id, :bathrooms, :bedrooms, :price, :sqft
end
