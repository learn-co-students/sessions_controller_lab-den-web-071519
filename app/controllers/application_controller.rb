class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def hello
    if session[:name]
    else
      redirect_to '/login'
    end
  end

  protect_from_forgery with: :exception
end