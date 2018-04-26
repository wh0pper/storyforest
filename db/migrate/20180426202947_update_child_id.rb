class UpdateChildId < ActiveRecord::Migration[5.2]
  def change
    remove_column :branches, :child_id
    add_column :branches, :child_ids, :integer, array:true, default: []
  end
end
