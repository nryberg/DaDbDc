class TableausController < ApplicationController
  def show
    @tableau = Tableau.find(params[:id])
  end
end
