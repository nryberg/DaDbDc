class Template
  include MongoMapper::Document
  key :platform, String
  key :database_name, String
  key :table_name, String
  key :column_name, String
  key :column_type, String
  key :column_format, String
  key :column_precision, String
  key :column_scale, String
  key :sample_sql, String

end
