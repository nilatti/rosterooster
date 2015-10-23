class Event < ActiveRecord::Base
	belongs_to :organization
	has_many :groups
	has_many :lodgings
	has_many :meals, dependent: :destroy
	has_many :gatherings, dependent: :destroy
	has_many :items, dependent: :destroy
	has_many :tasks, dependent: :destroy
	has_many :registrations, :through => :groups
end
