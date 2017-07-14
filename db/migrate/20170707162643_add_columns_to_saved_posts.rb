class AddColumnsToSavedPosts < ActiveRecord::Migration[5.1]
  change_table :savedposts do |t|
    t.boolean :deleted
    
    t.timestamps
  end
end
