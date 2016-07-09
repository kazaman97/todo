class AddCompritedToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :comprited, :boolean
  end
end
