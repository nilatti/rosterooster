class Person < ActiveRecord::Base
  belongs_to :organization
  
  has_many :registrations, dependent: :destroy

  has_many :events, :through => :registrations
  has_one :lodging, :through => :registrations 
  has_many :meals, :through => :registrations
  has_many :gatherings, :through => :registrations
  has_many :tasks, :through => :registrations
  has_many :items, :through => :registrations
end
