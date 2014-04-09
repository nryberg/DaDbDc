class Forklift
  #include MongoMapper::Document

  attr_accessor :loaders

  def initialize
    @loaders = Array.new
  end

  def add_loader(load)
    @loaders << load
  end

  def process_loads

    loaders.each do |line|
      server = Server.find_or_create_by_name(line.server)  

      base = server.bases.find_or_create_by_name(line.database_name)

      schema = Schema.new

      if line.schema.nil? 
        schema.name = "(default)"
      else
        schema = base.schemas.find_or_create_by_name(line.schema)
      end
      
      tableau = schema.tableaus.find_or_create_by_name(line.table)
      column = tableau.columns.find_or_create_by_name(line.name)
      column.type = line.type
      column.precision = line.precision
      column.scale = line.scale
      column.ordinal = line.ordinal

      server.bases << base
      base.schemas << schema
      schema.tableaus << tableau
      tableau.columns << column
      schema.save
      base.save
      server.save

    end
  end

end
