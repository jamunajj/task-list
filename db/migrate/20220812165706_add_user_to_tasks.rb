class AddUserToTasks < ActiveRecord::Migration[7.0]
  def change
    add_reference :tasks, :user
    add_foreign_key :tasks, :users
  end
end
