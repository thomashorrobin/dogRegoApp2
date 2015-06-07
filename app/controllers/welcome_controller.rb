class WelcomeController < ApplicationController
  def index
  	if !user_signed_in?
  		redirct_to 'users/sign_up'
  	end
  end

  def setAdmin
  	@user = current_user
  	@user.admin = true
  	@user.save
  end
end
