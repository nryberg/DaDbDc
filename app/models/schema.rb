class Schema
  include MongoMapper::Document

  key :name, String

  many :tableaus, :class_name => "Tableau"
  belongs_to :base
end
