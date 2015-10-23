class Item < ActiveRecord::Base
	has_many :registrations, :through => :promises
	has_many :people, :through => :promises
	belongs_to :event
end
