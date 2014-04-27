class ColumnsController < ApplicationController
  def index
    @columns = Column.paginate({
      :per_page => 25,
      :page => 1
    })
  end
  def show
    @column = Column.find(params[:id])
    name = @column.name
    puts name
    @tableaus = Array.new
    @columns = Column.all(:name => @column.name)
    @columns.collect! {|col| @tableaus << col.tableau}
    @tableau = @column.tableau
    @schema = @tableau.schema
    @base = @schema.base
    @server = @base.server
  end

  private 

end
