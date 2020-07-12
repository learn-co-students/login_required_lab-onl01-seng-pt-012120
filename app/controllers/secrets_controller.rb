class SecretsController < ApplicationController
  before_action :logged_in?

  def new
  end

  def show

  end

  def logged_in?
    if !current_user
      redirect_to "/"
    end
  end
end
