class Column
  include MongoMapper::Document

  key :name, String
  key :server, String
  key :database, String
  key :schema, String
  key :table, String
  key :type, String
  key :precision, Integer
  key :scale, Integer


end
