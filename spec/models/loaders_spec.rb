require 'spec_helper'

describe Loader do
   it "should accept basic information" do
    loader = Loader.new(:name => "fred")
    loader.server = "Server"
    loader.database_name = "Database"
    loader.schema = "Schema"
    loader.table = "Table"
    loader.type = "Type"
    loader.precision = 10
    loader.scale = 1

    
    expect(loader.name).to eq("fred")
    expect(loader.precision).to eq(10)
    expect(loader.scale).to eq(1)

  end
end
