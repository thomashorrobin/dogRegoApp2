class WelcomeController < ApplicationController
  def index
  	if !user_signed_in?
  		render html: "please sign in"
  	end
    if Owner.exists?(email: current_user.email)
      @owner = Owner.find_by email: current_user.email
    else
      @owner = Owner.new
      @owner.email = current_user.email
      @owner.save
    end
    
  end

  def setAdmin
  	@user = current_user
  	@user.admin = true
  	@user.save
  end

  def unSetAdmin
    @user = current_user
    @user.admin = false
    @user.save
  end
end
