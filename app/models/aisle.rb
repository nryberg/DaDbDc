class Aisle
  include MongoMapper::Document

  belongs_to :store

end
