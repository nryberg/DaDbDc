class Shelf
  include MongoMapper::Document

  belongs_to :aisle
end
