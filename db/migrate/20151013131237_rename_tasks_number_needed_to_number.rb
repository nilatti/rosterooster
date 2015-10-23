class RenameTasksNumberNeededToNumber < ActiveRecord::Migration
  def change
    rename_column :tasks, :number_needed, :number
  end
end
