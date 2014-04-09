class SchemasController < ApplicationController
  def show
    @schema = Schema.find(params[:id])
    @base = @schema.base
    @server = @base.server
  end
end
