class BasesController < ApplicationController
  def show
    @base= Base.find(params[:id])
  end
end
