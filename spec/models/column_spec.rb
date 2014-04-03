require 'spec_helper'

describe 'Column' do
  it "should accept basic information" do
    col = Column.new(:name => "fred")
    col.type = "Type"
    col.precision = 10
    col.scale = 1

    
    expect(col.name).to eq("fred")
    expect(col.precision).to eq(10)
    expect(col.scale).to eq(1)

  end

  it "should have a parent table" do
    col = Column.new
    tab = Tableau.new

    col.tableau = tab
    col.save

    col2 = Column.first
    col2.tableau.should eq(tab)
  end


end
