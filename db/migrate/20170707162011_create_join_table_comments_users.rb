class CreateJoinTableCommentsUsers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :comments, :users, table_name: :savedcomments
  end
end
