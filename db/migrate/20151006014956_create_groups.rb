class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :organization_id

      t.timestamps null: false
    end
  end
end
