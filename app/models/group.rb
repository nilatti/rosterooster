class Group < ActiveRecord::Base
  belongs_to :organization
  has_many :registrations, dependent: :destroy
  accepts_nested_attributes_for :registrations
  has_many :people, :through => :registrations
  accepts_nested_attributes_for :people
end
