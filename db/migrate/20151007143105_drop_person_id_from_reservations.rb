class DropPersonIdFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :person_id
  end
end
