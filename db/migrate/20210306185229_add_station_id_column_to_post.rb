class AddStationIdColumnToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :station_id, :integer
    add_column :posts, :owner_id, :integer
  end
end
