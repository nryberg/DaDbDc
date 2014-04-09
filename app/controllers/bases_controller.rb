class BasesController < ApplicationController
  def show
    @base= Base.find(params[:id])
    @server = @base.server
  end
end
