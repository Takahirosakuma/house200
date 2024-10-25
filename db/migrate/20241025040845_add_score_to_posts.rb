class AddScoreToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :score, :float, after: :city
  end
end
