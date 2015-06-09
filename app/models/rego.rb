class Rego < ActiveRecord::Base
  belongs_to :dog
  belongs_to :price_plan

  def comformation_message
  	return "To complete " << self.dog.Name << "'s registration please pay $" << self.price_plan.price.to_s << " to acount number 12-1234-1234-01"
  end

  def current_rego?
  	if Time.now > self.StartDate && Time.now < self.EndDate
  		return true
  	else
  		return false
  	end
  end
end
