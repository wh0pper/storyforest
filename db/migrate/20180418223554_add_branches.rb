class AddBranches < ActiveRecord::Migration[5.2]
  def change
    create_table :branches do |t|
      t.column :body, :string
      t.column :tree_id, integer
      t.column :user_id, integer

      t.timestamps
    end
  end
end
