require 'spec_helper'

describe Base do
  it "should accept a name" do
    base = Base.new
    base.name = "Fred's Base"
    base.save
    base2 = Base.first
    base2.name.should eq("Fred's Base")
  end

  it "should have a parent server" do
    base = Base.new
    server = Server.new
    server.bases << base

    base.server.should eq(server)
  end

  it "should have child schemas" do
    base = Base.new
    schema = Schema.new
    base.schemas << schema
    base.save

    base.schemas[0].should eq(schema)
  end




end
