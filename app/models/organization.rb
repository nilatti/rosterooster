class Organization < ActiveRecord::Base
	has_many :groups, dependent: :destroy
	has_many :people#, :through => :groups ?
	has_many :events, dependent: :destroy
	has_many :registrations, dependent: :destroy
end
