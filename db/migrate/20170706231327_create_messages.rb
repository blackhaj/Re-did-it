class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :subject
      t.text :body
      t.integer :deleted
      t.integer :parent_message

      # t.reference :creator
      # t.reference :recipient
      
      t.timestamps
    end
  end
end
