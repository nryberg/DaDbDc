require 'spec_helper'

describe Aisle do

    it "should have a parent" do 
      store = Store.new(:name => "My Store")

      aisle = Aisle.new(:store => store)

      aisle_store = aisle.store
      expect(aisle_store.name).to eq("My Store")

    end

    it "should accept a name" do
        aisle = Aisle.new(:name => "My aisle")

        expect(aisle.name).to eq("My aisle")
    end

    it "should have an shelf" do
        aisle = Aisle.new

        shelf = Shelf.new(:aisle => aisle)

        aisle.shelves << shelf 

        #expect(aisle.shelves[0]).to eq(shelf)
    end

end
