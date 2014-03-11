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


  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Product.create! row.to_hash
    end
  end
end
