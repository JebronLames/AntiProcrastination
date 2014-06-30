class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.integer :priority
      t.string :category
      t.datetime :due
      t.datetime :start
      t.time :timelength
      t.string :reward
      t.integer :autopriority
      t.boolean :done
      t.timestamps
    end
  end
end
