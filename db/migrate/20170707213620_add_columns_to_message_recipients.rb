class AddColumnsToMessageRecipients < ActiveRecord::Migration[5.1]
  change_table :message_recipients do |t|
    t.boolean :deleted
    
    t.timestamps
    end
end
