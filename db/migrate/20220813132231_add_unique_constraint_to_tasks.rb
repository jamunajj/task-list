class AddUniqueConstraintToTasks < ActiveRecord::Migration[7.0]
  def change
    add_index :tasks, [:name], unique: true, name: 'unique_task_name'
  end
end
