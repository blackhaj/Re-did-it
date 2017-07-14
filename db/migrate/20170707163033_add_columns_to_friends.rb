class AddColumnsToFriends < ActiveRecord::Migration[5.1]
  change_table :friends do |t|
    t.boolean :deleted
    
    t.timestamps
  end
end
