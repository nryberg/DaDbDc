class Base
  include MongoMapper::Document

  key :name, String

  many :schemas, :class_name => "Schema"

  belongs_to :server

end
