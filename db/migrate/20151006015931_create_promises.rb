class CreatePromises < ActiveRecord::Migration
  def change
    create_table :promises do |t|
      t.integer :item_id
      t.integer :person_id
      t.integer :registration_id

      t.timestamps null: false
    end
  end
end
