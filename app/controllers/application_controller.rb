class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def sql_coderay(text)
     CodeRay.scan(text, "SQL").div(:css => :class) 
  end 
end
