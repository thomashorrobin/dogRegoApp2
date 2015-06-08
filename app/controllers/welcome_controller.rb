class WelcomeController < ApplicationController
  def index
  	if !user_signed_in?
  		render html: "please sign in"
  	end
    @owner = Owner.new
    if Owner.exists?(email: current_user.email)
      @owner = Owner.find_by email: current_user.email
    else
      @owner.email = current_user.email
      @owner.save
    end
    @dogs = @owner.dogs
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

  def createdog
    @dog = Dog.new
    @owner = Owner.find_by email: current_user.email
  end

  def addrego
    @dog = Dog.find(params[:dog_id])
    months = params[:months]
    render html: "registered " << @dog.Name << " for " << months.to_s << " months"
  end
end
