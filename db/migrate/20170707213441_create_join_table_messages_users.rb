class CreateJoinTableMessagesUsers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :messages, :users, table_name: :message_recipients
  end
end
