class AddApitokenToConnections < ActiveRecord::Migration[5.1]
  def change
    add_column :connections, :apitoken, :string
  end
end
