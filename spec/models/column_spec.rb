require 'spec_helper'

describe 'Column' do
  it "should accept basic information" do
    col = Column.new(:name => "fred")
    col.server = "Server"
    col.database = "Database"
    col.schema = "Schema"
    col.table = "Table"
    col.type = "Type"
    col.precision = 10
    col.scale = 1

    
    expect(col.name).to eq("fred")
    expect(col.precision).to eq(10)
    expect(col.scale).to eq(1)

  end


end
