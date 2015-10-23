class AddLodgingIdToRegistration < ActiveRecord::Migration
  def change
    add_column :registrations, :lodging_id, :integer
  end
end
