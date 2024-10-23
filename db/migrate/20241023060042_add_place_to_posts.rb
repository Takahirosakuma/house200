class AddPlaceToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :prefecture, :string, after: :content
    add_column :posts, :city, :string, after: :prefecture
  end
end
