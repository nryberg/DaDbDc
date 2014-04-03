class ColumnsController < ApplicationController
  def index
    @columns = Column.paginate({
      :per_page => 25,
      :page => 1
    })
  end
  def show
  end


end
