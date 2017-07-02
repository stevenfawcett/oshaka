class AddConnectionRefToTasks < ActiveRecord::Migration[5.1]
  def change
    add_reference :tasks, :connection, foreign_key: true
  end
end
