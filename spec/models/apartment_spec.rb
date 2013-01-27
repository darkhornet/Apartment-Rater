require 'spec_helper'

describe Apartment do
  it "instantiates from factory" do
    expect { Apartment.new }.not_to raise_exception
  end
end