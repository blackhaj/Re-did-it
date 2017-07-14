class AddDeletedColumnToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :deleted, :boolean
  end
end
