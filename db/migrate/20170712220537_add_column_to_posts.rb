class AddColumnToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :post_karma, :integer
  end
end
