class CreateTrack < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks do |t|
      t.string :name
    end
  end
end
