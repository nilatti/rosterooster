class DropPersonIdFromPromises < ActiveRecord::Migration
  def change
    remove_column :promises, :person_id
  end
end
