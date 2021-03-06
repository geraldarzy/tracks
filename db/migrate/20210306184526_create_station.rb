class CreateStation < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :address
      t.string :picture
      t.integer :track_id
    end
  end
end
