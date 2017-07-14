class CreateCommentupvotes < ActiveRecord::Migration[5.1]
  def change
    create_table :commentupvotes do |t|
      t.references :comment, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
