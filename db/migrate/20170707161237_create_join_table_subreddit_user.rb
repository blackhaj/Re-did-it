class CreateJoinTableSubredditUser < ActiveRecord::Migration[5.1]
  def change
    create_join_table :subreddits, :users, table_name: :subredditmods
  end
end
