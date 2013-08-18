require 'spec_helper'

describe "Apartments" do
  describe "List" do
    it "shows all apartments" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit apartments_path
      response.status.should be(200)
    end
  end

  describe "Create a new apartment" do
    it "works" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      visit apartments_path
      response.status.should be(200)
    end
  end
end
