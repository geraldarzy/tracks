class ChangeDescriptionColumnInPostsToString < ActiveRecord::Migration[6.0]
  def change
    change_column :posts, :description, :string
  end
end
