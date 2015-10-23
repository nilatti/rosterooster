class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :meal_id
      t.integer :person_id
      t.integer :registration_id

      t.timestamps null: false
    end
  end
end
