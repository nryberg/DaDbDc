require 'spec_helper'

  describe Mall do
    it "should accept a name" do 
    server = Mall.new
    server.name = "My Server"

    expect(server.name).to eq("My Server")
    end

    it "should create a related store" do
     mall = Mall.new
     store = Store.create(:mall => mall)
     mall.stores << store
     expect(mall.stores[0]).to eq(store)
     expect(store.mall).to eq(mall)
    end

  end
