class SessionsController < ApplicationController
	# before_action :require_login
	# skip_before_action :require_login, only: [:new, :create]

	def new
		if session[:name]
			redirect_to welcome_path
		end
	end

	def create
		# binding.pry
		if params[:name].nil? || params[:name].blank?
			redirect_to root_path
		else
			session[:name] = params[:name]
			redirect_to welcome_path
		end
	end

	def welcome
	end

	def show
	end

	def destroy
		if session[:name]
			session.delete(:name)
			redirect_to root_path
		end
	end

	private

	def require_login
	    return head(:forbidden) unless session.include? :name
  	end

  	def current_user
  		session[:name]
  	end
end
