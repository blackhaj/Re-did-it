class DropMessageRecipients < ActiveRecord::Migration[5.1]
  def change
    drop_table :message_recipients
  end
end
