class CreateJoinTableUsersUsers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :users, table_name: :friends
  end
end
