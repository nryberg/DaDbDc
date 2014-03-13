class Template
  include MongoMapper::Document
  key :platform, String
  key :sample_sql, String
  key :notes, String

  def self.upload(file)
    CSV.foreach(file.path, headers: true) do |row|
      Column.create! row.to_hash
    end
  end

end
