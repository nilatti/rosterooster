class DropPersonAddRegistrationToAssignments < ActiveRecord::Migration
  def change
    remove_column :assignments, :person_id
    add_column :assignments, :registration_id, :integer
  end
end
