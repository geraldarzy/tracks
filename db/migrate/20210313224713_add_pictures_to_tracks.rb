class AddPicturesToTracks < ActiveRecord::Migration[6.0]
  def change
    add_column :tracks, :pic, :string
  end
end
