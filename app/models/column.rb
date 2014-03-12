class Column
  include MongoMapper::Document

  key :name, String
  key :database_name, String
  key :schema, String
  key :table, String
  key :type, String
  key :precision, Integer
  key :scale, Integer
  key :ordinal, Integer
  key :server, String


  def self.upload(file)
    CSV.foreach(file.path, headers: true) do |row|
      Column.create! row.to_hash
    end
  end
end
