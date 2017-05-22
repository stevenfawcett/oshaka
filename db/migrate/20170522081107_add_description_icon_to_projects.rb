class AddDescriptionIconToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :description, :string
    add_column :projects, :icon, :string
  end
end
