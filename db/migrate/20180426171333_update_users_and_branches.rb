class UpdateUsersAndBranches < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    rename_column :branches, :parent_id, :child_id
    add_column :branches, :fruit, :integer, :null => false, :default => 0
    add_column :trees, :user_id, :integer
  end
end
