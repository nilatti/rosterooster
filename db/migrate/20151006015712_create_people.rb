class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :organization_id
      t.string :email

      t.timestamps null: false
    end
  end
end
