class Server
  include MongoMapper::Document

  key :name, String
  many :bases, :class_name => "Base"

end
