class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.datetime :start
      t.datetime :end
      t.string :location
      t.string :menu

      t.timestamps null: false
    end
  end
end
