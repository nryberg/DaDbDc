class LoadersController < ApplicationController
  def index
     @loaders = Loader.paginate({
      :per_page => 25,
      :page => 1
    })
 end

  def upload 
    source = params[:file]

    if source == "" || source.nil?
      redirect_to upload_schema_path, notice: "You must choose a source file."
    else
      Loader.upload(source)
      forklift = Forklift.new
      forklift.loaders = Loader.all
      forklift.process_loads 
      redirect_to servers_url, notice: "Load imported."

      Loader.destroy_all
    end
  end

end
