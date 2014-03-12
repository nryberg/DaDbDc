class ColumnsController < ApplicationController
  def index
    @columns = Column.paginate({
      :per_page => 25,
      :page => 1
    })
  end
  def show
  end

  def upload 
    Column.upload(params[:file])
    redirect_to root_url, notice: "Columns imported."
  end
end
