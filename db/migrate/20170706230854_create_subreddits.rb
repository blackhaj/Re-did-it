class CreateSubreddits < ActiveRecord::Migration[5.1]
  def change
    create_table :subreddits do |t|
      t.string :title
      t.string :description
      t.text :sidebar
      t.integer :content_options # sub reddits can be links only, text only or both
      t.text :theme
      t.integer :public_private
      # t.reference :moderators

      t.timestamps
    end
  end
end
