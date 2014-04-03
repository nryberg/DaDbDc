class LoadersController < ApplicationController
  def index
     @loaders = Loader.paginate({
      :per_page => 25,
      :page => 1
    })
 end

  def upload_schema
  end
  def upload 
    Loader.upload(params[:file])
    redirect_to root_url, notice: "Load imported."
  end

end
