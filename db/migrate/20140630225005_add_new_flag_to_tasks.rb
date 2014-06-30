class AddNewFlagToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :flag, :boolean
  end
end
