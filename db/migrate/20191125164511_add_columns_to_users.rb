class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :full_name, :string
    add_column :users, :address, :string
    add_column :users, :lat, :float
    add_column :users, :lng, :float
    add_column :users, :photo, :string
  end
end
