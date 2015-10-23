class DropPersonIdFromSignups < ActiveRecord::Migration
  def change
    remove_column :signups, :person_id
  end
end
