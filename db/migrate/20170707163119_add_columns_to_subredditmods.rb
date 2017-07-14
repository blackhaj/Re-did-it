class AddColumnsToSubredditmods < ActiveRecord::Migration[5.1]
  change_table :subredditmods do |t|
    t.integer :permissions
    t.boolean :deleted
    
    t.timestamps
  end
end
