class DropSubredditmods < ActiveRecord::Migration[5.1]
  def change
    drop_table :subredditmods
  end
end
