class Tableau
  include MongoMapper::Document

  key :name, String
  belongs_to :schema

  many :columns, :class_name => "Column"
end
