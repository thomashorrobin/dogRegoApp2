class Rego < ActiveRecord::Base
  belongs_to :dog

  def current_rego?
  	if Time.now > StartDate && Time.now < EndDate
  		return true
  	else
  		return false
  	end
  end
end
