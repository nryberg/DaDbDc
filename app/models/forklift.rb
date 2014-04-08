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
      base = Base.find_or_create_by_name(line.database_name)
      schema = Schema.new

      if line.schema.nil? 
        schema.name = "(default)"
      else
        schema = Schema.find_or_create_by_name(line.schema)
      end
      
      column = Column.find_or_create_by_name(line.name)
      column.type = line.type
      column.precision = line.precision
      column.scale = line.scale
      column.ordinal = line.ordinal

      tableau = Tableau.find_or_create_by_name(line.table)
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
