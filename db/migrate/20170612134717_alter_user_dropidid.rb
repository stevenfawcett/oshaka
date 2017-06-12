class AlterUserDropidid < ActiveRecord::Migration[5.1]
  def change
         remove_column :users, :id_id
  end
end
