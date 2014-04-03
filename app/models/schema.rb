class Schema
  include MongoMapper::Document

  key :name, String

  many :tables, :class_name => "Table"
  belongs_to :base
end
