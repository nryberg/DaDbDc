class ColumnsController < ApplicationController
  def index
  end
  def show
  end

  def import
    Column.import(params[:file])
    redirect_to root_url, notice: "Columns imported."
  end
end
