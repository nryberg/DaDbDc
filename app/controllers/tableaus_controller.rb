class TableausController < ApplicationController
  def show
    @tableau = Tableau.find(params[:id])
    @schema = @tableau.schema
    @base= @schema.base
    @server = @base.server
  end
end
