class ModifyTasksList < ActiveRecord::Migration[5.2]
  def change
    rename_table :stories, :trees
  end
end
