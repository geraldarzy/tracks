class CreateTrackStation < ActiveRecord::Migration[6.0]
  def change
    create_table :track_stations do |t|
      t.integer :track_id
      t.integer :station_id
    end
  end
end
