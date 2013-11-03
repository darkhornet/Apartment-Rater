require 'spec_helper'

describe Category do
  it "instantiates" do
    expect { Category.new }.not_to raise_exception
  end
end
