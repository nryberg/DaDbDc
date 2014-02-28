require 'spec_helper'

describe Shelf do

    it "should have a parent" do 
      aisle = Aisle.new(:name => "My Aisle")

      shelf = Shelf.new(:aisle=> aisle)

      shelf_aisle = shelf.aisle
      expect(shelf_aisle.name).to eq("My Aisle")

    end

    it "should accept a name" do
        shelf = Shelf.new(:name => "My shelf")

        expect(shelf.name).to eq("My shelf")
    end

end
