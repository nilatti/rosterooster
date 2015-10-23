class AddEventIdToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :event_id, :integer

  end
end
