class Rego < ActiveRecord::Base
  belongs_to :dog
  belongs_to :price_plan

  def current_rego?
  	if Time.now > self.StartDate && Time.now < self.EndDate
  		return true
  	else
  		return false
  	end
  end
end
