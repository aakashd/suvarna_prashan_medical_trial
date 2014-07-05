class ChangeUserFields < ActiveRecord::Migration
  def change
    add_column :users, :role, :string
    remove_column :users, :username
  end
end
