class Meal < ActiveRecord::Base
	belongs_to :event
	has_many :reservations, dependent: :destroy
	has_many :registrations, :through => :reservations
end
