class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :name_params

  def current_user
    session[:name]
  end

  def index
    redirect_to login_path if current_user.nil?
  end

  def name_params
    if params[:name].nil? || !params[:name].empty?
      params[:name]
    end
  end

end
