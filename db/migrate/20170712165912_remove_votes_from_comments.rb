class RemoveVotesFromComments < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :upvotes
    remove_column :comments, :downvotes
  end
end
