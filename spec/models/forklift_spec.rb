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

  it "Should accept real collection of loaders and process" do
    require 'csv'

    @forklift = Forklift.new

    file_path = "/Users/Nick/Develop/DaDbDc/notes/postgres_sample.csv"
    infile = File.new(file_path)
    Loader.upload(infile)
    #save_and_open_page

    loaders = Loader.all

    loaders.each do |load|
      @forklift.add_loader(load)

    end

    expect(@forklift.loaders.count).to eq(5)

    @forklift.process_loads

  end
end
