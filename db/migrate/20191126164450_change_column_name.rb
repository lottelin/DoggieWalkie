class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :lat, :latitude
    rename_column :users, :lng, :longitude

  end
end
