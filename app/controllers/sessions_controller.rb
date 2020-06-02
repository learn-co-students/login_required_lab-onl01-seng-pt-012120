class SessionsController < ApplicationController

    def new
    end

    def create
        if params[:name].present?
            session[:name] = params[:name]
            redirect_to '/home'
        else
            redirect_to '/login'
        end
    end

    def destroy
        if session[:name].present?
            session[:name] = nil
        end
    end
end