require 'spec_helper'

describe Tableau do
  it "should accept a name" do
    tableau = Tableau.new
    tableau.name = "Fred"
    tableau.save
    tableau2 = Tableau.first
    tableau2.name.should eq("Fred")
  end

  it "should have a parent schema" do
    tableau = Tableau.new
    tabschema = Schema.new
    tableau.schema =  tabschema 
    tableau.schema.should eq(tabschema)
  end

  it "should have children columns" do
    tableau = Tableau.new
    (1..4).each do |n|
      column = Column.new
      column.name = n
      tableau.columns << column
    end

    tableau.columns[2].name.should eq ("3")
  end

end
