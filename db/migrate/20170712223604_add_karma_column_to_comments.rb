class AddKarmaColumnToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :post_karma, :integer, default: 0
  end
end
