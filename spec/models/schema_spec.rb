require 'spec_helper'

describe Schema do
  it "should accept a name" do
    schema = Schema.new
    schema.name = "Fred"
    schema.save
    schema2 = Schema.first
    schema2.name.should eq("Fred")
  end

  it "should have a parent base" do
    base = Base.new
    schema = Schema.new
    schema.base = base

    base2 = schema.base
    base2.should eq(base)
  end

  it "should have child tables" do
    schema = Schema.new
    (1..4).each do |n|
      tableau = Tableau.new
      tableau.name = n
      schema.tableaus << tableau
    end

    schema.tableaus[3].name.should eq ("4")
  end

  it "should accept a null value for db's without schemas" 



end
