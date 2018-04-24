class AddPointsDefaultValue < ActiveRecord::Migration[5.2]
  def change
    change_column :trees, :points, :integer, :default => 0
  end
end
