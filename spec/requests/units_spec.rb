require 'spec_helper'

describe "Units" do
  let (:apartment) { Apartment.create }

  describe "GET /units" do
    it "works" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get apartment_units_path apartment
      response.status.should be(200)
    end
  end

  describe "POST /units" do
    it "works" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      post :create
      response.status.should be(200)
    end
  end
end
