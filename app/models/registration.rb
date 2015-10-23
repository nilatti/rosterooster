class Registration < ActiveRecord::Base
	belongs_to :person
	belongs_to :event
	belongs_to :group
	belongs_to :organization

	belongs_to :lodging

    has_many :promises, dependent: :destroy
    has_many :items, :through => :promises

    has_many :assignments, dependent: :destroy
    has_many :tasks, :through => :assignments

    has_many :signups, dependent: :destroy
    has_many :gatherings, :through => :signups

    has_many :reservations, dependent: :destroy
    has_many :meals, :through => :reservations


end
