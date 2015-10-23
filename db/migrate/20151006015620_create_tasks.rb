class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :location
      t.datetime :start
      t.datetime :end
      t.string :description
      t.integer :number_needed

      t.timestamps null: false
    end
  end
end
