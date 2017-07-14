class AddColumnsToSavedcomments < ActiveRecord::Migration[5.1]
  change_table :savedcomments do |t|
    t.boolean :deleted
    
    t.timestamps
  end
end
