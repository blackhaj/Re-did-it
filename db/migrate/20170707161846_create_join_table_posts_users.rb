class CreateJoinTablePostsUsers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :posts, :users, table_name: :savedposts
  end
end
