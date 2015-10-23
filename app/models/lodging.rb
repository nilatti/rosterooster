class Lodging < ActiveRecord::Base
	has_many :registrations
	belongs_to :event
end
