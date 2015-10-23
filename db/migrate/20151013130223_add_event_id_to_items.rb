class AddEventIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :event_id, :integer
  end
end
