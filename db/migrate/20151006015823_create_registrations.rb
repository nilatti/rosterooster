class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.integer :group_id
      t.integer :event_id
      t.integer :accommodation_id
      t.integer :person_id
      t.boolean :paid
      t.integer :organization_id

      t.timestamps null: false
    end
  end
end
