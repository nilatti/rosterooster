class CreateGatherings < ActiveRecord::Migration
  def change
    create_table :gatherings do |t|
      t.string :location
      t.datetime :start
      t.datetime :end
      t.string :leader
      t.string :name

      t.timestamps null: false
    end
  end
end
