class SchemasController < ApplicationController
  def show
    @schema = Schema.find(params[:id])
  end
end
