class AddDescriptionColumnToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :description, :text
  end
end
