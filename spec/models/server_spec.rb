require 'spec_helper'

describe Server do
  it "Accepts a name" do
    server = Server.new
    server.name = "Fred"
    server.name.should eq("Fred")
  end

  it "Has child databases" do
    server = Server.new
    base = Base.new
    server.bases << base

    server.bases[0].should eq(base)
  end



end
