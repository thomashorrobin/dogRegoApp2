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
    months = params[:months].to_i
    @rego = Rego.new
    @rego.RegoLength = months
    @rego.StartDate = Time.now
    @rego.EndDate = Time.now + (months * 4 * 7 * 24 * 60 * 60)
    @rego.dog = @dog
    @rego.save

    require 'mail'

      Mail.defaults do
      delivery_method :smtp, {
        :port      => 587,
        :address   => "smtp.mandrillapp.com",
        :user_name => "thomasroberthorrobin@gmail.com",
        :password  => "6RyJ5TlEBO-bMbwGqTDFTQ"
      }
    end
        mail = Mail.deliver do
      to      "thomasroberthorrobin@gmail.com"
      from    'Thomas Horrobin <thomas@dogregoapp.co.nz>' # Your from name and email address
      subject 'How to pay for Barrys registration!'

      text_part do
        body 'Mandrill speaks plaintext'
      end

      html_part do
        content_type 'text/html; charset=UTF-8'
        body '<em>Mandrill speaks wehbkajwcfj <strong>HTML</strong></em>'
      end
    end
    render html: "registered " << @dog.Name << " for " << months.to_s << " months"
  end
end
