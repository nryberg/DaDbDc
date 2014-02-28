require 'spec_helper'

describe Store do

    it "should have a parent" do 
      mall = Mall.new(:name => "My Mall")
  
      store = Store.new(:mall => mall)

      store_mall = store.mall 
      expect(store_mall.name).to eq("My Mall")

    end

    it "should accept a name" do
        store = Store.new(:name => "My store")

        expect(store.name).to eq("My store")
    end

    it "should have an aisle" do
        store = Store.new

        aisle = Aisle.new(:store => store)

        store.aisles << aisle

        expect(store.aisles[0]).to eq(aisle)
    end

end
