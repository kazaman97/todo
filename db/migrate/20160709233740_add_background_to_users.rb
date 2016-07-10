class AddBackgroundToUsers < ActiveRecord::Migration
  def change
    add_column :users, :background, :binary
  end
end
