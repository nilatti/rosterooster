class DropRegistrationIdFromLodging < ActiveRecord::Migration
  def change
    remove_column :lodgings, :registration_id

  end
end
