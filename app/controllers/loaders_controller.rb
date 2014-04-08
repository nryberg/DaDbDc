class LoadersController < ApplicationController
  def index
     @loaders = Loader.paginate({
      :per_page => 25,
      :page => 1
    })
 end

  def upload 
    Loader.upload(params[:file])
    forklift = Forklift.new
    forklift.loaders = Loader.all
    forklift.process_loads 
    redirect_to servers_url, notice: "Load imported."

    Loader.destroy_all
  end

end
