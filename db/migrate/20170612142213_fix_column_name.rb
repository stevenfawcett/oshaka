class FixColumnName < ActiveRecord::Migration[5.1]
  def change
          rename_column :projects_users, :product_id, :project_id
  end
end
