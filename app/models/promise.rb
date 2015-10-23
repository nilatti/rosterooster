class Promise < ActiveRecord::Base
	belongs_to :item
	belongs_to :registration
end
