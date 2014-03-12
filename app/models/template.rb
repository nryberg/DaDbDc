class Template
  include MongoMapper::Document
  key :platform, String
  key :sample_sql, String
  key :notes, String

end
