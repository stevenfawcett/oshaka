class AddProxyToConnections < ActiveRecord::Migration[5.1]
  def change
    add_column :connections, :proxy_url, :string
    add_column :connections, :port, :integer
  end
end
