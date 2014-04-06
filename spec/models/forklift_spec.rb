require 'spec_helper'

describe Forklift do
  it "Should accept a collection of loaders" do
    @forklift = Forklift.new
    (1..4).each do |n|
      loader = Loader.new
      loader.name = n
      @forklift.add_loader(loader)
    end

    expect(@forklift.loaders[3].name).to eq("4")


  end
end
