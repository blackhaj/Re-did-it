class AddKarmaColumnToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :post_karma, :integer, default: 0
  end
end
