class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :password

      # t.integer :saved_posts
      # t.integer :saved_comments
      # t.integer :friends
      # t.integer :recently_viewed

      t.timestamps
    end
  end
end
