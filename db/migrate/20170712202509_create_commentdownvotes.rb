class CreateCommentdownvotes < ActiveRecord::Migration[5.1]
  def change
    create_table :commentdownvotes do |t|
      t.references :comment, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
