class Gathering < ActiveRecord::Base
	belongs_to :event
	has_many :registrations, :through => :signups
	has_many :people, :through => :signups
end
