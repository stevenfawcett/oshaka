class AlterProjectsUsers < ActiveRecord::Migration[5.1]
  def change
      change_table :projects_users do |t|
         t.references :user, index: true, foreign_key: true
         t.references :product, index: true, foreign_key: true
      end
  end
end
