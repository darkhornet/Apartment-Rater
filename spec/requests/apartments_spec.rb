require 'spec_helper'

describe "Apartments" do
  before :each do
    @apartment = Apartment.create(name: "Orleans Place", address: "123 Somewhere", city: "Baton Rouge", state: "LA", zip: "70810")
  end

  describe "Apartment listing", :type => :feature do
    it "shows all apartments" do
      visit apartments_path
      page.should have_content("Orleans Place")
    end
  end

  describe "Create a new apartment", :type => :feature do
    it "successfully adds a complete apartment" do
      visit new_apartment_path
      fill_in "Name", :with => "Clearview Apartments"
      fill_in "Address", :with => "123 Somewhere"
      fill_in "City", :with => "Baton Rouge"
      fill_in "State", :with => "LA"
      fill_in "Zip", :with => "70810"
      click_button "Create Apartment"

      page.should have_content("Clearview Apartments")     
    end
  end

  describe "Edit an existing apartment", :type => :feature do
    it "loads the existing apartment" do
      visit edit_apartment_path @apartment
      page.should have_content("Name")
      find_field('Name').value.should eq 'Orleans Place'
      
    end

    it "updates the record on submit" do
      visit edit_apartment_path @apartment
      fill_in "Address", :with => "123 Anywhere"
      click_button "Update Apartment"

      page.should have_content("123 Anywhere")     
    end
  end

end
