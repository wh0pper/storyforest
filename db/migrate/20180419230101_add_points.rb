class AddPoints < ActiveRecord::Migration[5.2]
  def change
    add_column :trees, :points, :integer
  end
end
