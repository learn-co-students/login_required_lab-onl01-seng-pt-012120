class SecretsController < ApplicationController
	before_action :require_login

	def show
	end

	private

	def require_login
		# binding.pry
	    # return head(:forbidden) unless session.include? :name
	    redirect_to root_path unless session.include? :name
  	end

end