class CreateProjectsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :projects_users do |t|
      add_reference :users,    :id, index: true
      add_reference :projects, :id, index: true
    end
  end
end
