class Task < ActiveRecord::Base
  belongs_to :event
  has_many :assignments, dependent: :destroy
  has_many :registrations, :through => :assignments
end
