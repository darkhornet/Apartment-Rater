require 'spec_helper'

describe "units/edit" do
  before(:each) do
    @unit = assign(:unit, stub_model(Unit,
      :apartment_id => 1,
      :bedrooms => 1,
      :bathrooms => 1.5,
      :sqft => 1,
      :price => 1
    ))
  end

  it "renders the edit unit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => units_path(@unit), :method => "post" do
      assert_select "input#unit_apartment_id", :name => "unit[apartment_id]"
      assert_select "input#unit_bedrooms", :name => "unit[bedrooms]"
      assert_select "input#unit_bathrooms", :name => "unit[bathrooms]"
      assert_select "input#unit_sqft", :name => "unit[sqft]"
      assert_select "input#unit_price", :name => "unit[price]"
    end
  end
end
