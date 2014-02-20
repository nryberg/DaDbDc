class TemplatesController < ApplicationController
  def index
    @templates = Template.all
  end

  def new
    @template = Template.new
  end

  def create 
    @template = Template.new(params[:template])
    if @template.save
      redirect_to action: "index" 
    end
  end

  def show
    @template = Template.find(params[:id])
  end
end
