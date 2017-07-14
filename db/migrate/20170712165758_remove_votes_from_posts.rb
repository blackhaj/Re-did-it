class RemoveVotesFromPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :upvotes
    remove_column :posts, :downvotes
  end
end
