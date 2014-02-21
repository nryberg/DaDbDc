class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def coderay(text)
    text.gsub(/<code( lang="(.+?)")?>(.+?)<\/code>/m) do
     CodeRay.scan($3, $2).div(:css => :class)
    end
  end 
end
