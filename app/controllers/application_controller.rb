class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  private
  
  def authorize
    if session[:user_id].nil?
      session[:original_uri] = request.original_url
      flash[:notice] = '请登录'
      redirect_to :login
    end
  end
end
