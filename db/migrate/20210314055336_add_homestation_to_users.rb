class AddHomestationToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :home_station, :string
  end
end
