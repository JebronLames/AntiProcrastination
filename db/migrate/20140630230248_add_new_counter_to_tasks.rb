class AddNewCounterToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :counter, :integer
  end
end
