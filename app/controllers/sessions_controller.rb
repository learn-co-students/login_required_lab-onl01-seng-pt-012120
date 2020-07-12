class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
    else
      redirect_to root_path
    end
  end

  def destroy
    if session[:name] && !session[:name].empty?
      session[:name] = nil
    end
  end
end
