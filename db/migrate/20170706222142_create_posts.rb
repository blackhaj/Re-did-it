class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :type
      t.string :title
      t.text :body
      t.string :media #photos or videos - check data type is correct
      t.string :url
      t.integer :upvotes
      t.integer :downvotes
      t.boolean :deleted
      # t.reference :op
      # t.integer :subreddit
      t.timestamps
    end
  end
end
