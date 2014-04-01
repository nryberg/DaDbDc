class Server
  include MongoMapper::Document

  key :name, String
  many :stores, :class_name => "Store"

end
