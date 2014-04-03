class Column
  include MongoMapper::Document

  key :name, String
  key :type, String
  key :precision, Integer
  key :scale, Integer
  key :ordinal, Integer

  belongs_to :tableau

end
