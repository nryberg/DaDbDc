class Forklift
  #include MongoMapper::Document

  attr_accessor :loaders

  def initialize
    @loaders = Array.new
  end

  def add_loader(load)
    @loaders << load
  end

end
