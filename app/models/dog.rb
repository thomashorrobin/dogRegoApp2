class Dog < ActiveRecord::Base
	has_many :regos
	belongs_to :breed
	belongs_to :owner
end
