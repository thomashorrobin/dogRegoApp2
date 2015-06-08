class Dog < ActiveRecord::Base
	has_many :regos
	belongs_to :breed
	belongs_to :owner

	def is_registered?
		registered = false
		regos.each do |rego|
			if rego.current_rego?
				registered = true
			end
		end
		return registered
	end
end
