class RenamePostKarmaColumnInComments < ActiveRecord::Migration[5.1]
  def change
    rename_column :comments, :post_karma, :comment_karma
  end
end
