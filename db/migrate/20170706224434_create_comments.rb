class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :upvotes
      t.integer :downvotes
      t.integer :parent_comment

      # t.reference :user
      # t.reference :post_id
      t.timestamps
    end
  end
end
