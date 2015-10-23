class CreateLodgings < ActiveRecord::Migration
  def change
    create_table :lodgings do |t|
      t.string :name
      t.string :location
      t.integer :max_males
      t.integer :max_females
      t.integer :max_neutral
      t.integer :event_id
      t.integer :registration_id

      t.timestamps null: false
    end
  end
end
