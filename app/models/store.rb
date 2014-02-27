class Store
  include MongoMapper::Document

  belongs_to :mall

  many :aisles, :class_name => "Aisle"

end
