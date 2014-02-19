class Template
  include MongoMapper::Document
  key :platform, String
  key :database_name, String

end
