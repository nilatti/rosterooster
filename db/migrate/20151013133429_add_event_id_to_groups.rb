class AddEventIdToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :event_id, :integer

  end
end
