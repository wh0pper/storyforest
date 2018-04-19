class AddBranchParentId < ActiveRecord::Migration[5.2]
  def change
    add_column :branches, :parent_id, :integer
  end
end
