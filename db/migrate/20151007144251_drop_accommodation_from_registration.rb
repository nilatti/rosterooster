class DropAccommodationFromRegistration < ActiveRecord::Migration
  def change
    remove_column :registrations, :accommodation_id

  end
end
