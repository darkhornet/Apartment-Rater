require 'spec_helper'

describe "Units" do
  before :each do
    @apartment = Apartment.create(name: "Orleans Place", address: "123 Somewhere", city: "Baton Rouge", state: "LA", zip: "70810")
    @unit = Unit.create(apartment: @apartment, bedrooms: 3, bathrooms: 1.5, sqft: 2100)
  end

  describe "Unit listing", :type => :feature do
    before :each do
      visit apartment_path @apartment
    end

    it "shows all units for the apartment" do
      page.should have_content("2100")
    end

    it "has an edit link" do
      first('.unit-edit').click
      page.should have_content("Edit Unit")
    end
  end

  describe "Edit Unit", :type => :feature do
  end
end
