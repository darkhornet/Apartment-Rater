require 'spec_helper'

describe Unit do
  it "instantiates" do
    expect { Unit.new }.not_to raise_exception
  end
end
