class TemplatesController < ApplicationController
  def index
  end

  def new
    @template = Template.new
  end
end
