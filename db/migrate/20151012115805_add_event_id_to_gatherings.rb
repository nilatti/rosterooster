class AddEventIdToGatherings < ActiveRecord::Migration
  def change
    add_column :gatherings, :event_id, :integer
  end
end
