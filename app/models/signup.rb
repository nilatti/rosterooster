class Signup < ActiveRecord::Base
	belongs_to :registration
	belongs_to :gathering
end
