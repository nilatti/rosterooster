class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :number
      t.datetime :time_needed
      t.string :location_needed

      t.timestamps null: false
    end
  end
end
