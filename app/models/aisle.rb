class Aisle
  include MongoMapper::Document

  belongs_to :store
  many :shelves, :class_name => "Shelf"

end
