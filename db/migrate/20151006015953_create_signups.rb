class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.integer :gathering_id
      t.integer :person_id
      t.integer :registration_id

      t.timestamps null: false
    end
  end
end
