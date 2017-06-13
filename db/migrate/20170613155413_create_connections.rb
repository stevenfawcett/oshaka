class CreateConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :connections do |t|
      t.string :username
      t.string :apikey
      t.string :url
      t.string :name, limit: 10
      t.timestamps
    end
    add_index :connections, :name, unique: true
  end
end
