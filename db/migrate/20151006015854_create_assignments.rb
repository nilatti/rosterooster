class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :task_id
      t.integer :person_id

      t.timestamps null: false
    end
  end
end
