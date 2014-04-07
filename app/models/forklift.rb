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
      server.bases << base

      base.save
      server.save

    end
  end


end
