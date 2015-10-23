class Reservation < ActiveRecord::Base
	belongs_to :meal
	belongs_to :registration
end
